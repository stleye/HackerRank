//https://www.hackerrank.com/challenges/c-tutorial-class

#include <iostream>
#include <sstream>
using namespace std;

class Student {
private:
	int age;
	std::string first_name;
	std::string last_name;
	int standard;
public:
	int get_age() {
		return age;
	}

	void set_age(int age) {
		this->age = age;
	}

	std::string get_first_name() {
		return first_name;
	}

	void set_first_name(std::string first_name) {
		this->first_name = first_name;
	}

	std::string get_last_name() {
		return last_name;
	}

	void set_last_name(std::string last_name) {
		this->last_name = last_name;
	}

	int get_standard() {
		return standard;
	}

	void set_standard(int standard) {
		this->standard = standard;
	}

	std::string to_string() {
		std::stringstream ss;
		ss << get_age() << "," << get_first_name() << "," << get_last_name() << "," << get_standard();
		return ss.str();
	}
};

int main() {
    int age, standard;
    string first_name, last_name;
    
    cin >> age >> first_name >> last_name >> standard;
    
    Student st;
    st.set_age(age);
    st.set_standard(standard);
    st.set_first_name(first_name);
    st.set_last_name(last_name);
    
    cout << st.get_age() << "\n";
    cout << st.get_last_name() << ", " << st.get_first_name() << "\n";
    cout << st.get_standard() << "\n";
    cout << "\n";
    cout << st.to_string();
    
    return 0;
}