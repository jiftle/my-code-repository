//设置当前线程的语言，用于同时包含了多个语言的资源工程

#define LANGUAGE_ENGLISH 1

#if LANGUAGE_ENGLISH
		::SetThreadLocale(MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_DEFAULT),
			SORT_DEFAULT));
#else
		::SetThreadLocale(MAKELCID(MAKELANGID(LANG_CHINESE,SUBLANG_DEFAULT),
			SORT_DEFAULT));
#endif
