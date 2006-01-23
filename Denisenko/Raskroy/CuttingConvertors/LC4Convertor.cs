﻿using System;
using System.Diagnostics;
using System.Collections.Generic;
using System.Text;
using Denisenko.Cutting;
using Denisenko.Cutting.LC4;

namespace Denisenko.Cutting.Converting
{
	public class LC4Convertor
	{
		private LC4Document m_result;

		public LC4Document Result { get { return m_result; } }

		public LC4Convertor()
		{
			m_result = new LC4Document();
		}

		public void AddCuttingResult(CuttingScheme cuttingResult, String cuttingName)
		{
			LC4Cutting lc4Cutting = m_result.CreateCutting();
			lc4Cutting.Name = cuttingName;
			// TODO: Здесь может быть ошибка
			lc4Cutting.Size1 = NumericFromSize(cuttingResult.Width);
			lc4Cutting.Size2 = NumericFromSize(cuttingResult.Height);
			AddSections(lc4Cutting, cuttingResult.RootSection);
			m_result.Cuttings.Add(lc4Cutting);
		}

		private void AddSections(LC4SectionsCollection into, SectionsCollection sections)
		{
			foreach (Section section in sections)
			{
				LC4Section lc4Section = ConvertSection(section);
				into.Add(lc4Section);
				AddSections(lc4Section, section);
			}
		}

		private LC4Section ConvertSection(Section input)
		{
			LC4Section result = m_result.CreateSection();
			switch (input.SectionType)
			{
				case SectionType.Cut:
					result.SectionType = LC4SectionType.Cut;
					break;
				case SectionType.Element:
					result.SectionType = LC4SectionType.Detail;
					break;
				case SectionType.NewLine:
					result.SectionType = LC4SectionType.NewLine;
					break;
				case SectionType.Remain:
					result.SectionType = LC4SectionType.Remain;
					break;
				case SectionType.Scrap:
					result.SectionType = LC4SectionType.Scrap;
					break;
				case SectionType.Undefined:
					result.SectionType = LC4SectionType.Scrap;
					break;
			}
			result.Size = NumericFromSize(input.Size);
			return result;
		}

		static LC4Numeric NumericFromSize(Size size)
		{
			Debug.Assert(Size.Factor == 1000);
			Debug.Assert(LC4Numeric.Scale == 100000);
			return LC4Numeric.FromScaled(size.Scaled * 100);
		}
	}

}
