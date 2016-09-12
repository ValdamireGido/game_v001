#if !defined(__Results_h_include__)
#define __Results_h_include__

namespace redcort
{
	enum class Result
	{
		  Success
		, Failed

		, UnsuportedDriver

		, StreamReadingFailed
		, FileCannotBeOpened
	};
}

#endif // __Results_h_include__