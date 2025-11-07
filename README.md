# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary
We built a D-latch and then used it to make a 4-byte memory. When E (enable) is high, the latch copies the input; when E is low, it holds. For the memory, we wrote the selected byte with a button and show the selected byte on the LEDs.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

Synthesis blocks combinational loops; behavioral with regs lets the tool map to real storage that actually synthesizes.

### What is the meaning of always @(*) in a sensitivity block?

It’s a combinational block that updates whenever any input it reads changes.


### What importance is memory to digital circuits?

So values can persist over time and updates can happen on specific events and not every tiny input change.

