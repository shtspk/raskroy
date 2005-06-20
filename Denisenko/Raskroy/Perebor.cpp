#include "stdafx.h"
#include "Perebor.h"

namespace Denisenko {
namespace Raskroy {

// ����������� �������
// ���������:
//	[i] size - ������ �� ������� ����� ����������� ������
//	[o] rashod - ���������� ������������� �������
//	[io] i
//	[i] end
//	[i] remains
scalar Perebor::Recursion(scalar size, Amounts &rashod)
{
	scalar register size1;
	unsigned n;
	if (m_i != m_end)
	{
		n = 0;
		scalar best = size;
		bool first = true;
		size1 = size;
		Amounts rashod1;
		unsigned remain = m_remains[m_i->Offset];
		while (n <= remain && size1 > m_sawThickness)
		{
			scalar remain;
			m_i++;
			remain = Recursion(size1, rashod1);
			m_i--;
			if (remain < best || first)
			{
				best = remain;
				rashod = rashod1;
				rashod[m_i->Offset] = n;
				if (best <= 0)
					return best;
				first = false;
			}
			n++;
			size1 = size - (m_i->Value + m_sawThickness)*n;
			// size1 ����� ����� ���� < 0 ��� ��������� ���� ��������� ��� ������ ���
			// ������
		}
		// ���� ������ ������ ����������� �� ���������� ����
		//if (best == size)
		//{
		//	rashod.resize(remains.size());
		//	std::fill(rashod.begin(), rashod.end(), 0);
		//}
		return best;
	}
	else
	{
		n = unsigned((size + m_sawThickness) / (m_i->Value + m_sawThickness));
		unsigned remain = m_remains[m_i->Offset];
		if (n > remain)
			n = remain;
		rashod.resize(m_remains.size());
		std::fill(rashod.begin(), rashod.end(), 0);
		rashod[m_i->Offset] = n;
		size1 = size - n*(m_i->Value + m_sawThickness);
		// size1 ����� ����� ���� < 0 ��� ��������� ���� ��������� ��� ������ ���
		// ������
		return size1;
	}
}

// ������� ������� ������ ��������� ������� �� ������ ������� � ��������� ��������
// ���������:
//		[i] size - �������� ������
//		[i] other_size - ���������������� ������
//		[o] stat - ����������
//		[o] details - ������������ �������, �� ���� �������� ������ ���������
//		[o] rashod - ������ �������
// ���������� true ���� ���� �� ���� ������ �����������
bool Perebor::make(const Size &size, scalar otherSize, t_raskroy::t_details &details, Amounts &rashod)
{
	if (otherSize < size.OtherSizes.Min->Value)
		return false;

	// ��������� ���������� ��� ��������
	m_i = size.OtherSizes.begin();
	m_end = size.OtherSizes.end();
	m_end--;
	// ����������� ������ ��� �������� [i..end]
	m_remain = Recursion(otherSize, rashod);
	if (m_remain == otherSize)	// ���� ������ ������ �����������
		return false;

	unsigned nums = 0;
	for (m_i = size.OtherSizes.begin(); m_i != size.OtherSizes.end(); m_i++)
	{
		unsigned rashodi = rashod[m_i->Offset];
		if (rashodi > 0)
		{
			t_raskroy::t_detail detail;
			detail.size = m_i->Value;
			detail.num = rashodi;
			details.push_back(detail);
			nums += rashodi;	// ���������� �����
		}
	}
	// ��������� ���������� ������
	m_opilki = size.Value * m_sawThickness * nums;
	// ���� ��������� ��� �������� �� ������ �� ��������� ���������� ������
	if (m_remain < 0)
	{
		m_opilki += size.Value * m_remain;
		m_remain = 0;
	}
	return true;
}

} // namespace Denisenko
} // namespace Raskroy