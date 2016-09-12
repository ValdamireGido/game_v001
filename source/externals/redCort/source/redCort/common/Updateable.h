#if !defined(__Updateable_h_include__)
#define __Updateable_h_include__

#include "Result.h"

#include <chrono>
#include <thread>

namespace redcort
{
	class Updateable
	{
	public:
		static void Update(Updateable* _updateable);
		static std::chrono::nanoseconds GetTimeDiffSinceLast();

	public:
		Updateable();
		virtual ~Updateable();

		virtual void Update(std::chrono::nanoseconds frameTime) = 0;
		virtual bool ShouldWork() const = 0;
	};

	class ParallelUpdateable
		: public Updateable
	{
	public:
		virtual ~ParallelUpdateable();

	private:

	};
}
#endif // __Updateable_h_include__