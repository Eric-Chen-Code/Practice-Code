; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@INVALID_SYMBOL = external constant i32, align 4
@READ_INT_FAIL = external constant i32, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"INVALID INPUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define void @example_io() #0 {
entry:
  %PLUS = alloca i32, align 4
  %MINUS = alloca i32, align 4
  %QUIT = alloca i32, align 4
  %cmd = alloca i32, align 4
  %n = alloca i32, align 4
  %call = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  store i32 %call, i32* %PLUS, align 4
  %call1 = call i32 @lookup_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  store i32 %call1, i32* %MINUS, align 4
  %call2 = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  store i32 %call2, i32* %QUIT, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end18
  %call3 = call i32 @read_symbol()
  store i32 %call3, i32* %cmd, align 4
  %0 = load i32, i32* %cmd, align 4
  %1 = load i32, i32* @INVALID_SYMBOL, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %2 = load i32, i32* %cmd, align 4
  %3 = load i32, i32* %QUIT, align 4
  %cmp4 = icmp eq i32 %2, %3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %call5 = call i32 @read_int()
  store i32 %call5, i32* %n, align 4
  %4 = load i32, i32* %n, align 4
  %5 = load i32, i32* @READ_INT_FAIL, align 4
  %cmp6 = icmp eq i32 %4, %5
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %6 = load i32, i32* %cmd, align 4
  %7 = load i32, i32* %PLUS, align 4
  %cmp8 = icmp ne i32 %6, %7
  br i1 %cmp8, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %8 = load i32, i32* %cmd, align 4
  %9 = load i32, i32* %MINUS, align 4
  %cmp9 = icmp ne i32 %8, %9
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %land.lhs.true, %if.end
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  br label %while.end

if.end12:                                         ; preds = %land.lhs.true, %lor.lhs.false7
  %10 = load i32, i32* %cmd, align 4
  %11 = load i32, i32* %PLUS, align 4
  %cmp13 = icmp eq i32 %10, %11
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %12 = load i32, i32* %n, align 4
  call void @plus(i32 %12)
  br label %if.end18

if.else:                                          ; preds = %if.end12
  %13 = load i32, i32* %cmd, align 4
  %14 = load i32, i32* %MINUS, align 4
  %cmp15 = icmp eq i32 %13, %14
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else
  %15 = load i32, i32* %n, align 4
  call void @minus(i32 %15)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then14
  br label %while.body

while.end:                                        ; preds = %if.then10, %if.then
  ret void
}

declare i32 @lookup_symbol(i8*) #1

declare i32 @read_symbol() #1

declare i32 @read_int() #1

declare i32 @printf(i8*, ...) #1

declare void @plus(i32) #1

declare void @minus(i32) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
