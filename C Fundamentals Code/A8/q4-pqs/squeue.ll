; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squeue = type { %struct.llnode*, %struct.llnode* }
%struct.llnode = type { i8*, %struct.llnode* }

@.str = private unnamed_addr constant [3 x i8] c"sq\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"/u1/dtompkins/.seashell/projects/_A8/q2b/_dave_squeue.c\00", align 1
@__PRETTY_FUNCTION__.squeue_add_back = private unnamed_addr constant [52 x i8] c"void squeue_add_back(const char *, struct squeue *)\00", align 1
@__PRETTY_FUNCTION__.squeue_remove_front = private unnamed_addr constant [43 x i8] c"char *squeue_remove_front(struct squeue *)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sq->front\00", align 1
@__PRETTY_FUNCTION__.squeue_front = private unnamed_addr constant [48 x i8] c"const char *squeue_front(const struct squeue *)\00", align 1
@__PRETTY_FUNCTION__.squeue_is_empty = private unnamed_addr constant [45 x i8] c"_Bool squeue_is_empty(const struct squeue *)\00", align 1
@__PRETTY_FUNCTION__.squeue_destroy = private unnamed_addr constant [37 x i8] c"void squeue_destroy(struct squeue *)\00", align 1
@__PRETTY_FUNCTION__.squeue_print = private unnamed_addr constant [41 x i8] c"void squeue_print(const struct squeue *)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"[empty]\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"[%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"->%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.squeue* @squeue_create() #0 {
entry:
  %sq = alloca %struct.squeue*, align 8
  %call = call noalias i8* @malloc(i64 16) #5
  %0 = bitcast i8* %call to %struct.squeue*
  store %struct.squeue* %0, %struct.squeue** %sq, align 8
  %1 = load %struct.squeue*, %struct.squeue** %sq, align 8
  %front = getelementptr inbounds %struct.squeue, %struct.squeue* %1, i32 0, i32 0
  store %struct.llnode* null, %struct.llnode** %front, align 8
  %2 = load %struct.squeue*, %struct.squeue** %sq, align 8
  %back = getelementptr inbounds %struct.squeue, %struct.squeue* %2, i32 0, i32 1
  store %struct.llnode* null, %struct.llnode** %back, align 8
  %3 = load %struct.squeue*, %struct.squeue** %sq, align 8
  ret %struct.squeue* %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone
define %struct.llnode* @new_node(i8* %str, %struct.llnode* %pnext) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %pnext.addr = alloca %struct.llnode*, align 8
  %node = alloca %struct.llnode*, align 8
  store i8* %str, i8** %str.addr, align 8
  store %struct.llnode* %pnext, %struct.llnode** %pnext.addr, align 8
  %call = call noalias i8* @malloc(i64 16) #5
  %0 = bitcast i8* %call to %struct.llnode*
  store %struct.llnode* %0, %struct.llnode** %node, align 8
  %1 = load i8*, i8** %str.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #6
  %add = add i64 %call1, 1
  %mul = mul i64 1, %add
  %call2 = call noalias i8* @malloc(i64 %mul) #5
  %2 = load %struct.llnode*, %struct.llnode** %node, align 8
  %item = getelementptr inbounds %struct.llnode, %struct.llnode* %2, i32 0, i32 0
  store i8* %call2, i8** %item, align 8
  %3 = load %struct.llnode*, %struct.llnode** %node, align 8
  %item3 = getelementptr inbounds %struct.llnode, %struct.llnode* %3, i32 0, i32 0
  %4 = load i8*, i8** %item3, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %call4 = call i8* @strcpy(i8* %4, i8* %5) #5
  %6 = load %struct.llnode*, %struct.llnode** %pnext.addr, align 8
  %7 = load %struct.llnode*, %struct.llnode** %node, align 8
  %next = getelementptr inbounds %struct.llnode, %struct.llnode* %7, i32 0, i32 1
  store %struct.llnode* %6, %struct.llnode** %next, align 8
  %8 = load %struct.llnode*, %struct.llnode** %node, align 8
  ret %struct.llnode* %8
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone
define void @squeue_add_back(i8* %str, %struct.squeue* %sq) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %sq.addr = alloca %struct.squeue*, align 8
  %node = alloca %struct.llnode*, align 8
  store i8* %str, i8** %str.addr, align 8
  store %struct.squeue* %sq, %struct.squeue** %sq.addr, align 8
  %0 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %tobool = icmp ne %struct.squeue* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i32 47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.squeue_add_back, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %str.addr, align 8
  %call = call %struct.llnode* @new_node(i8* %1, %struct.llnode* null)
  store %struct.llnode* %call, %struct.llnode** %node, align 8
  %2 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front = getelementptr inbounds %struct.squeue, %struct.squeue* %2, i32 0, i32 0
  %3 = load %struct.llnode*, %struct.llnode** %front, align 8
  %cmp = icmp eq %struct.llnode* %3, null
  br i1 %cmp, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.end
  %4 = load %struct.llnode*, %struct.llnode** %node, align 8
  %5 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front2 = getelementptr inbounds %struct.squeue, %struct.squeue* %5, i32 0, i32 0
  store %struct.llnode* %4, %struct.llnode** %front2, align 8
  br label %if.end4

if.else3:                                         ; preds = %if.end
  %6 = load %struct.llnode*, %struct.llnode** %node, align 8
  %7 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %back = getelementptr inbounds %struct.squeue, %struct.squeue* %7, i32 0, i32 1
  %8 = load %struct.llnode*, %struct.llnode** %back, align 8
  %next = getelementptr inbounds %struct.llnode, %struct.llnode* %8, i32 0, i32 1
  store %struct.llnode* %6, %struct.llnode** %next, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then1
  %9 = load %struct.llnode*, %struct.llnode** %node, align 8
  %10 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %back5 = getelementptr inbounds %struct.squeue, %struct.squeue* %10, i32 0, i32 1
  store %struct.llnode* %9, %struct.llnode** %back5, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind optnone
define i8* @squeue_remove_front(%struct.squeue* %sq) #0 {
entry:
  %sq.addr = alloca %struct.squeue*, align 8
  %retval5 = alloca i8*, align 8
  %old_front = alloca %struct.llnode*, align 8
  store %struct.squeue* %sq, %struct.squeue** %sq.addr, align 8
  %0 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %tobool = icmp ne %struct.squeue* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i32 59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.squeue_remove_front, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front = getelementptr inbounds %struct.squeue, %struct.squeue* %1, i32 0, i32 0
  %2 = load %struct.llnode*, %struct.llnode** %front, align 8
  %tobool1 = icmp ne %struct.llnode* %2, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i32 60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.squeue_remove_front, i32 0, i32 0)) #7
  unreachable

if.end4:                                          ; preds = %if.then2
  %3 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front6 = getelementptr inbounds %struct.squeue, %struct.squeue* %3, i32 0, i32 0
  %4 = load %struct.llnode*, %struct.llnode** %front6, align 8
  %item = getelementptr inbounds %struct.llnode, %struct.llnode* %4, i32 0, i32 0
  %5 = load i8*, i8** %item, align 8
  store i8* %5, i8** %retval5, align 8
  %6 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front7 = getelementptr inbounds %struct.squeue, %struct.squeue* %6, i32 0, i32 0
  %7 = load %struct.llnode*, %struct.llnode** %front7, align 8
  store %struct.llnode* %7, %struct.llnode** %old_front, align 8
  %8 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front8 = getelementptr inbounds %struct.squeue, %struct.squeue* %8, i32 0, i32 0
  %9 = load %struct.llnode*, %struct.llnode** %front8, align 8
  %next = getelementptr inbounds %struct.llnode, %struct.llnode* %9, i32 0, i32 1
  %10 = load %struct.llnode*, %struct.llnode** %next, align 8
  %11 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front9 = getelementptr inbounds %struct.squeue, %struct.squeue* %11, i32 0, i32 0
  store %struct.llnode* %10, %struct.llnode** %front9, align 8
  %12 = load %struct.llnode*, %struct.llnode** %old_front, align 8
  %13 = bitcast %struct.llnode* %12 to i8*
  call void @free(i8* %13) #5
  %14 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front10 = getelementptr inbounds %struct.squeue, %struct.squeue* %14, i32 0, i32 0
  %15 = load %struct.llnode*, %struct.llnode** %front10, align 8
  %cmp = icmp eq %struct.llnode* %15, null
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end4
  %16 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %back = getelementptr inbounds %struct.squeue, %struct.squeue* %16, i32 0, i32 1
  store %struct.llnode* null, %struct.llnode** %back, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end4
  %17 = load i8*, i8** %retval5, align 8
  ret i8* %17
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone
define i8* @squeue_front(%struct.squeue* %sq) #0 {
entry:
  %sq.addr = alloca %struct.squeue*, align 8
  store %struct.squeue* %sq, %struct.squeue** %sq.addr, align 8
  %0 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %tobool = icmp ne %struct.squeue* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i32 73, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.squeue_front, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front = getelementptr inbounds %struct.squeue, %struct.squeue* %1, i32 0, i32 0
  %2 = load %struct.llnode*, %struct.llnode** %front, align 8
  %tobool1 = icmp ne %struct.llnode* %2, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i32 74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.squeue_front, i32 0, i32 0)) #7
  unreachable

if.end4:                                          ; preds = %if.then2
  %3 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front5 = getelementptr inbounds %struct.squeue, %struct.squeue* %3, i32 0, i32 0
  %4 = load %struct.llnode*, %struct.llnode** %front5, align 8
  %item = getelementptr inbounds %struct.llnode, %struct.llnode* %4, i32 0, i32 0
  %5 = load i8*, i8** %item, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone
define zeroext i1 @squeue_is_empty(%struct.squeue* %sq) #0 {
entry:
  %sq.addr = alloca %struct.squeue*, align 8
  store %struct.squeue* %sq, %struct.squeue** %sq.addr, align 8
  %0 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %tobool = icmp ne %struct.squeue* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i32 80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.squeue_is_empty, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front = getelementptr inbounds %struct.squeue, %struct.squeue* %1, i32 0, i32 0
  %2 = load %struct.llnode*, %struct.llnode** %front, align 8
  %cmp = icmp eq %struct.llnode* %2, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone
define void @squeue_destroy(%struct.squeue* %sq) #0 {
entry:
  %sq.addr = alloca %struct.squeue*, align 8
  store %struct.squeue* %sq, %struct.squeue** %sq.addr, align 8
  %0 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %tobool = icmp ne %struct.squeue* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i32 86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.squeue_destroy, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %call = call zeroext i1 @squeue_is_empty(%struct.squeue* %1)
  %lnot = xor i1 %call, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %call1 = call i8* @squeue_remove_front(%struct.squeue* %2)
  call void @free(i8* %call1) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %4 = bitcast %struct.squeue* %3 to i8*
  call void @free(i8* %4) #5
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @squeue_print(%struct.squeue* %sq) #0 {
entry:
  %sq.addr = alloca %struct.squeue*, align 8
  %cur = alloca %struct.llnode*, align 8
  store %struct.squeue* %sq, %struct.squeue** %sq.addr, align 8
  %0 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %tobool = icmp ne %struct.squeue* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0), i32 95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.squeue_print, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front = getelementptr inbounds %struct.squeue, %struct.squeue* %1, i32 0, i32 0
  %2 = load %struct.llnode*, %struct.llnode** %front, align 8
  %cmp = icmp eq %struct.llnode* %2, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end2:                                          ; preds = %if.end
  %3 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front3 = getelementptr inbounds %struct.squeue, %struct.squeue* %3, i32 0, i32 0
  %4 = load %struct.llnode*, %struct.llnode** %front3, align 8
  %item = getelementptr inbounds %struct.llnode, %struct.llnode* %4, i32 0, i32 0
  %5 = load i8*, i8** %item, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %5)
  %6 = load %struct.squeue*, %struct.squeue** %sq.addr, align 8
  %front5 = getelementptr inbounds %struct.squeue, %struct.squeue* %6, i32 0, i32 0
  %7 = load %struct.llnode*, %struct.llnode** %front5, align 8
  %next = getelementptr inbounds %struct.llnode, %struct.llnode* %7, i32 0, i32 1
  %8 = load %struct.llnode*, %struct.llnode** %next, align 8
  store %struct.llnode* %8, %struct.llnode** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end2
  %9 = load %struct.llnode*, %struct.llnode** %cur, align 8
  %tobool6 = icmp ne %struct.llnode* %9, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.llnode*, %struct.llnode** %cur, align 8
  %item7 = getelementptr inbounds %struct.llnode, %struct.llnode* %10, i32 0, i32 0
  %11 = load i8*, i8** %item7, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %11)
  %12 = load %struct.llnode*, %struct.llnode** %cur, align 8
  %next9 = getelementptr inbounds %struct.llnode, %struct.llnode* %12, i32 0, i32 1
  %13 = load %struct.llnode*, %struct.llnode** %next9, align 8
  store %struct.llnode* %13, %struct.llnode** %cur, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %return

return:                                           ; preds = %while.end, %if.then1
  ret void
}

declare i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
