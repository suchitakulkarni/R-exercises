# Note: R does not allow multiple line comments

x <- c("what","is","truth")

if("Truth" %in% x) {
    print("Truth is found the first time")
} else if ("truth" %in% x) {
    print("truth is found the second time")
} else {
    print("No truth found")
}

# just playing around with repeat loops
# R does not seem to care about indents, so they are just for reading ease
cnt <- 2

repeat {
    cnt <- cnt+1
    print("increasing cnt")
    print(cnt)
    if(cnt > 5) {
        print("Now will decrease cnt")
        repeat{
        cnt <- cnt-1
        if(cnt < 0)
        {
            print("now the code will break")
            break
        }
        }
        
        break
    }
}

# play around with for loop
#the following makes letters an invalid variable
# LETTERS (all caps) is a set of English capital letters
print(LETTERS)
# letters (all small) is a set of English small letters
print(letters)

v<-LETTERS[1:10]
for (i in v)
{
    if (i == "A"){
        print(i)}
    if (i == "C"){
        next
    }
    print(i)
}
