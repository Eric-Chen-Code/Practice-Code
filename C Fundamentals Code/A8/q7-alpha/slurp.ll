; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone
define i8* @slurp() #0 {
entry:
  %c = alloca i8, align 1
  %maxlen = alloca i32, align 4
  %len = alloca i32, align 4
  %s = alloca i8*, align 8
  store i8 0, i8* %c, align 1
  store i32 2, i32* %maxlen, align 4
  store i32 0, i32* %len, align 4
  %0 = load i32, i32* %maxlen, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 1
  %call = call noalias i8* @malloc(i64 %mul) #3
  store i8* %call, i8** %s, align 8
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %c)
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %c, align 1
  %2 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  store i8 %1, i8* %arrayidx, align 1
  %3 = load i32, i32* %len, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %call3 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %c)
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %len, align 4
  %5 = load i32, i32* %maxlen, align 4
  %cmp6 = icmp eq i32 %4, %5
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %while.body
  %6 = load i32, i32* %maxlen, align 4
  %mul9 = mul nsw i32 %6, 2
  store i32 %mul9, i32* %maxlen, align 4
  %7 = load i8*, i8** %s, align 8
  %8 = load i32, i32* %maxlen, align 4
  %conv10 = sext i32 %8 to i64
  %mul11 = mul i64 %conv10, 1
  %call12 = call i8* @realloc(i8* %7, i64 %mul11) #3
  store i8* %call12, i8** %s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %while.body
  %9 = load i8, i8* %c, align 1
  %10 = load i8*, i8** %s, align 8
  %11 = load i32, i32* %len, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom
  store i8 %9, i8* %arrayidx13, align 1
  %12 = load i32, i32* %len, align 4
  %inc14 = add nsw i32 %12, 1
  store i32 %inc14, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond15

while.cond15:                                     ; preds = %while.body27, %while.end
  %13 = load i8*, i8** %s, align 8
  %14 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom16 = sext i32 %sub to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %15 to i32
  %cmp19 = icmp eq i32 %conv18, 32
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond15
  %16 = load i8*, i8** %s, align 8
  %17 = load i32, i32* %len, align 4
  %sub21 = sub nsw i32 %17, 1
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %16, i64 %idxprom22
  %18 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %18 to i32
  %cmp25 = icmp eq i32 %conv24, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond15
  %19 = phi i1 [ true, %while.cond15 ], [ %cmp25, %lor.rhs ]
  br i1 %19, label %while.body27, label %while.end28

while.body27:                                     ; preds = %lor.end
  %20 = load i32, i32* %len, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %len, align 4
  br label %while.cond15

while.end28:                                      ; preds = %lor.end
  br label %if.end29

if.end29:                                         ; preds = %while.end28, %entry
  %21 = load i8*, i8** %s, align 8
  %22 = load i32, i32* %len, align 4
  %add = add nsw i32 %22, 1
  %conv30 = sext i32 %add to i64
  %mul31 = mul i64 %conv30, 1
  %call32 = call i8* @realloc(i8* %21, i64 %mul31) #3
  store i8* %call32, i8** %s, align 8
  %23 = load i8*, i8** %s, align 8
  %24 = load i32, i32* %len, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %23, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1
  %25 = load i8*, i8** %s, align 8
  ret i8* %25
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @__isoc99_scanf(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
