// pre pasted c++ library

#include <string>
#include <cstdio>
#include <vector>

#define random randooooom
#define null NULL

class string {
public:
    std::string base;

    string() {}

    string(const std::string &src) : base(src) {}

    string(const char *src): base(src) { }

    string operator + (const string &other) { return string(base + other.base); }

    int length() { return base.size(); }
    int ord(int i) { return static_cast<int>(base[i]); }
    string* substring(int beg, int end) {
        return new string(std::string(base.substr(beg, end-beg+1)));
    }
    int parseInt() {
        int ret;
        sscanf(base.c_str(), "%d", &ret);
        return ret;
    }
};


inline void __lib_print(string* s) {
    fputs(s->base.c_str(), stdout);
}

inline void __lib_println(string* s) {
    puts(s->base.c_str());
}

inline string* __lib_toString(int i) {
    return new string(std::to_string(i));
}

inline int __lib_getInt() {
    int ret;
    scanf("%d", &ret);
    return ret;
}

inline string* __lib_getString() {
    static char buf[257];
    scanf("%s", buf);
    return new string(buf);
}
struct array__;
struct string;
int main();
void print(string* LL_str);
void println(string* LL_str);
string* getString();
int getInt();
string* toString(int LL_i);
struct array__ {
int size() {
}
};
int main() {
string* LL_s = getString();
println(LL_s);
}
void print(string* str) { __lib_print(str); }
void println(string* str) { __lib_println(str); }
string* getString() { return __lib_getString(); }
int getInt() { return __lib_getInt(); }
string* toString(int i) { return __lib_toString(i); }
