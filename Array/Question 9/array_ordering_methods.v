module ordering_methods;
int arr[] = '{5, 10, 15, 10, 20};
initial begin
    // reverse
    arr.reverse();
    $display("reverse = %p", arr);

    // sort (ascending)
    arr.sort();
    $display("sorted = %p", arr);

    // rsort (descending)
    arr.rsort();
    $display("reverse sort = %p", arr);

    // shuffle (random order)
    arr.shuffle();
    $display("shuffle = %p", arr);
end
endmodule
