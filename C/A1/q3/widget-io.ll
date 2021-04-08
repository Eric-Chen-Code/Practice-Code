; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"INVALID INPUT: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cog\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sprocket\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"make\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@INVALID_SYMBOL = external constant i32, align 4
@READ_INT_FAIL = external constant i32, align 4

; Function Attrs: noinline nounwind optnone
define void @invalid(i32 %cmd) #0 {
entry:
  %cmd.addr = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %0 = load i32, i32* %cmd.addr, align 4
  call void @print_symbol(i32 %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #1

declare void @print_symbol(i32) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: noinline nounwind optnone
define void @widget_machine_input() #0 {
entry:
  %RESET = alloca i32, align 4
  %STATUS = alloca i32, align 4
  %ADD_COG = alloca i32, align 4
  %ADD_SPROC = alloca i32, align 4
  %MAKE = alloca i32, align 4
  %EMPTY = alloca i32, align 4
  %RESIZE = alloca i32, align 4
  %QUIT = alloca i32, align 4
  %cmd = alloca i32, align 4
  %amt = alloca i32, align 4
  %call = call i32 @lookup_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  store i32 %call, i32* %RESET, align 4
  %call1 = call i32 @lookup_symbol(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  store i32 %call1, i32* %STATUS, align 4
  %call2 = call i32 @lookup_symbol(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  store i32 %call2, i32* %ADD_COG, align 4
  %call3 = call i32 @lookup_symbol(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store i32 %call3, i32* %ADD_SPROC, align 4
  %call4 = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call4, i32* %MAKE, align 4
  %call5 = call i32 @lookup_symbol(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  store i32 %call5, i32* %EMPTY, align 4
  %call6 = call i32 @lookup_symbol(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  store i32 %call6, i32* %RESIZE, align 4
  %call7 = call i32 @lookup_symbol(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  store i32 %call7, i32* %QUIT, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end47
  %call8 = call i32 @read_symbol()
  store i32 %call8, i32* %cmd, align 4
  %0 = load i32, i32* %cmd, align 4
  %1 = load i32, i32* @INVALID_SYMBOL, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %2 = load i32, i32* %cmd, align 4
  %3 = load i32, i32* %QUIT, align 4
  %cmp9 = icmp eq i32 %2, %3
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %cmd, align 4
  %5 = load i32, i32* %ADD_COG, align 4
  %cmp10 = icmp eq i32 %4, %5
  br i1 %cmp10, label %if.then15, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %6 = load i32, i32* %cmd, align 4
  %7 = load i32, i32* %ADD_SPROC, align 4
  %cmp12 = icmp eq i32 %6, %7
  br i1 %cmp12, label %if.then15, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %8 = load i32, i32* %cmd, align 4
  %9 = load i32, i32* %RESIZE, align 4
  %cmp14 = icmp eq i32 %8, %9
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %lor.lhs.false13, %lor.lhs.false11, %if.end
  %call16 = call i32 @read_int()
  store i32 %call16, i32* %amt, align 4
  %10 = load i32, i32* %amt, align 4
  %11 = load i32, i32* @READ_INT_FAIL, align 4
  %cmp17 = icmp eq i32 %10, %11
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  %12 = load i32, i32* %cmd, align 4
  call void @invalid(i32 %12)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %lor.lhs.false13
  %13 = load i32, i32* %cmd, align 4
  %14 = load i32, i32* %RESET, align 4
  %cmp21 = icmp eq i32 %13, %14
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end20
  call void @reset_machine()
  br label %if.end47

if.else:                                          ; preds = %if.end20
  %15 = load i32, i32* %cmd, align 4
  %16 = load i32, i32* %STATUS, align 4
  %cmp23 = icmp eq i32 %15, %16
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else
  call void @display_status()
  br label %if.end46

if.else25:                                        ; preds = %if.else
  %17 = load i32, i32* %cmd, align 4
  %18 = load i32, i32* %MAKE, align 4
  %cmp26 = icmp eq i32 %17, %18
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else25
  call void @make()
  br label %if.end45

if.else28:                                        ; preds = %if.else25
  %19 = load i32, i32* %cmd, align 4
  %20 = load i32, i32* %ADD_COG, align 4
  %cmp29 = icmp eq i32 %19, %20
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else28
  %21 = load i32, i32* %amt, align 4
  call void @insert_cog(i32 %21)
  br label %if.end44

if.else31:                                        ; preds = %if.else28
  %22 = load i32, i32* %cmd, align 4
  %23 = load i32, i32* %ADD_SPROC, align 4
  %cmp32 = icmp eq i32 %22, %23
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else31
  %24 = load i32, i32* %amt, align 4
  call void @insert_sprocket(i32 %24)
  br label %if.end43

if.else34:                                        ; preds = %if.else31
  %25 = load i32, i32* %cmd, align 4
  %26 = load i32, i32* %EMPTY, align 4
  %cmp35 = icmp eq i32 %25, %26
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else34
  call void @empty_bin()
  br label %if.end42

if.else37:                                        ; preds = %if.else34
  %27 = load i32, i32* %cmd, align 4
  %28 = load i32, i32* %RESIZE, align 4
  %cmp38 = icmp eq i32 %27, %28
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else37
  %29 = load i32, i32* %amt, align 4
  call void @replace_bin(i32 %29)
  br label %if.end41

if.else40:                                        ; preds = %if.else37
  %30 = load i32, i32* %cmd, align 4
  call void @invalid(i32 %30)
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then39
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then36
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then33
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then30
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then27
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then24
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then22
  br label %while.body

while.end:                                        ; preds = %if.then
  ret void
}

declare i32 @lookup_symbol(i8*) #1

declare i32 @read_symbol() #1

declare i32 @read_int() #1

declare void @reset_machine() #1

declare void @display_status() #1

declare void @make() #1

declare void @insert_cog(i32) #1

declare void @insert_sprocket(i32) #1

declare void @empty_bin() #1

declare void @replace_bin(i32) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
