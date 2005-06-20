#ifndef ErrorsH
#define ErrorsH

#include "types.h"

namespace Denisenko {
namespace Raskroy {

class err_cannot_set_parts {
public:
	Parts &sheets;
	Sizes *sizes;
	Amounts &remains;

	err_cannot_set_parts(Parts &sheets,
		Sizes sizes[],
		Amounts &remains)
		: sheets(sheets),
			sizes(sizes),
			remains(remains)
	{
	}
};

} // namespace Denisenko
} // namespace Raskroy

#endif // ErrorsH