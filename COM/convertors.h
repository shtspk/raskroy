#include "errors.h"
#include "..\parser.h"

Denisenko::Raskroy::ParsedCut
	convert(struct IParsedCut &Cut);

Denisenko::Raskroy::ParsedPart
	convert(struct IParsedPart &Part);

Denisenko::Raskroy::ParsedCuts
	convert(struct IParsedCuts &Cuts);

Denisenko::Raskroy::ParsedParts
	convert(struct IParsedParts &Parts);

Denisenko::Raskroy::Stat
	convert(struct IStatistic &Statistic);

Denisenko::Raskroy::Part
	convert(struct ISheet &Sheet);

Denisenko::Raskroy::Parts
	convert(struct ISheets &Sheets);

Denisenko::Raskroy::t_parsed_result
	convert(struct IResult &Result);

struct IParsedCut*
	convert(const Denisenko::Raskroy::ParsedCut&);

struct IParsedPart*
	convert(const Denisenko::Raskroy::ParsedPart&);

struct IResult*
	convert(const Denisenko::Raskroy::t_parsed_result&);

Denisenko::Raskroy::t_parsed_result convert(BSTR str);
