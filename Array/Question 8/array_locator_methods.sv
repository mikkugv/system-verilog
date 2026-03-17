/* Locator → “Find something”
find, index, min, max */

module locator_methods;
int arr[] = '{5, 10, 15, 10, 20};
initial begin
    // find
    int q1[$] = arr.find(x) with (x > 10);
    $display("find >10 = %p", q1);

    // find_index
    int q2[$] = arr.find_index(x) with (x == 10);
    $display("index of 10 = %p", q2);

    // find_first
    int q3[$] = arr.find_first(x) with (x == 10);
    $display("first 10 = %p", q3);

    // find_first_index
    int q4[$] = arr.find_first_index(x) with (x == 10);
    $display("first index of 10 = %p", q4);

    // find_last
    int q5[$] = arr.find_last(x) with (x == 10);
    $display("last 10 = %p", q5);

    // find_last_index
    int q6[$] = arr.find_last_index(x) with (x == 10);
    $display("last index of 10 = %p", q6);

    // min
    int min_val = arr.min();
    $display("min = %0d", min_val);

    // max
    int max_val = arr.max();
    $display("max = %0d", max_val);

    // unique
    int q7[$] = arr.unique();
    $display("unique = %p", q7);

    // unique_index
    int q8[$] = arr.unique_index();
    $display("unique index = %p", q8);

end
endmodule
