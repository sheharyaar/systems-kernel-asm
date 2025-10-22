int recurse(int n) {
        if (n == 0)
                return 1;
        else
                return recurse(n - 1);
}

int main() { return recurse(5); }