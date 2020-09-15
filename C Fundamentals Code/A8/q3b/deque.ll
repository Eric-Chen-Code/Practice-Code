; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deque = type { %struct.llnode*, %struct.llnode* }
%struct.llnode = type { i32, %struct.llnode*, %struct.llnode* }

@.str = private unnamed_addr constant [4 x i8] c"deq\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"/u1/dtompkins/.seashell/projects/_A8/q4b/deque.c\00", align 1
@__PRETTY_FUNCTION__.deque_destroy = private unnamed_addr constant [35 x i8] c"void deque_destroy(struct deque *)\00", align 1
@__PRETTY_FUNCTION__.deque_is_empty = private unnamed_addr constant [43 x i8] c"_Bool deque_is_empty(const struct deque *)\00", align 1
@__PRETTY_FUNCTION__.deque_insert_front = private unnamed_addr constant [45 x i8] c"void deque_insert_front(int, struct deque *)\00", align 1
@__PRETTY_FUNCTION__.deque_insert_back = private unnamed_addr constant [44 x i8] c"void deque_insert_back(int, struct deque *)\00", align 1
@__PRETTY_FUNCTION__.deque_front = private unnamed_addr constant [38 x i8] c"int deque_front(const struct deque *)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"!deque_is_empty(deq)\00", align 1
@__PRETTY_FUNCTION__.deque_remove_front = private unnamed_addr constant [39 x i8] c"int deque_remove_front(struct deque *)\00", align 1
@__PRETTY_FUNCTION__.deque_back = private unnamed_addr constant [37 x i8] c"int deque_back(const struct deque *)\00", align 1
@__PRETTY_FUNCTION__.deque_remove_back = private unnamed_addr constant [38 x i8] c"int deque_remove_back(struct deque *)\00", align 1
@__PRETTY_FUNCTION__.deque_print = private unnamed_addr constant [39 x i8] c"void deque_print(const struct deque *)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"[empty]\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@__PRETTY_FUNCTION__.deque_print_reverse = private unnamed_addr constant [47 x i8] c"void deque_print_reverse(const struct deque *)\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.deque* @deque_create() #0 {
entry:
  %deq = alloca %struct.deque*, align 8
  %call = call noalias i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.deque*
  store %struct.deque* %0, %struct.deque** %deq, align 8
  %1 = load %struct.deque*, %struct.deque** %deq, align 8
  %front = getelementptr inbounds %struct.deque, %struct.deque* %1, i32 0, i32 0
  store %struct.llnode* null, %struct.llnode** %front, align 8
  %2 = load %struct.deque*, %struct.deque** %deq, align 8
  %back = getelementptr inbounds %struct.deque, %struct.deque* %2, i32 0, i32 1
  store %struct.llnode* null, %struct.llnode** %back, align 8
  %3 = load %struct.deque*, %struct.deque** %deq, align 8
  ret %struct.deque* %3
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone
define void @deque_destroy(%struct.deque* %deq) #0 {
entry:
  %deq.addr = alloca %struct.deque*, align 8
  store %struct.deque* %deq, %struct.deque** %deq.addr, align 8
  %0 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %tobool = icmp ne %struct.deque* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.deque_destroy, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front = getelementptr inbounds %struct.deque, %struct.deque* %1, i32 0, i32 0
  %2 = load %struct.llnode*, %struct.llnode** %front, align 8
  call void @node_destroy(%struct.llnode* %2)
  %3 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %4 = bitcast %struct.deque* %3 to i8*
  call void @free(i8* %4) #4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind optnone
define internal void @node_destroy(%struct.llnode* %node) #0 {
entry:
  %node.addr = alloca %struct.llnode*, align 8
  store %struct.llnode* %node, %struct.llnode** %node.addr, align 8
  %0 = load %struct.llnode*, %struct.llnode** %node.addr, align 8
  %tobool = icmp ne %struct.llnode* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.llnode*, %struct.llnode** %node.addr, align 8
  %next = getelementptr inbounds %struct.llnode, %struct.llnode* %1, i32 0, i32 2
  %2 = load %struct.llnode*, %struct.llnode** %next, align 8
  call void @node_destroy(%struct.llnode* %2)
  %3 = load %struct.llnode*, %struct.llnode** %node.addr, align 8
  %4 = bitcast %struct.llnode* %3 to i8*
  call void @free(i8* %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone
define zeroext i1 @deque_is_empty(%struct.deque* %deq) #0 {
entry:
  %deq.addr = alloca %struct.deque*, align 8
  store %struct.deque* %deq, %struct.deque** %deq.addr, align 8
  %0 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %tobool = icmp ne %struct.deque* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.deque_is_empty, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front = getelementptr inbounds %struct.deque, %struct.deque* %1, i32 0, i32 0
  %2 = load %struct.llnode*, %struct.llnode** %front, align 8
  %cmp = icmp eq %struct.llnode* %2, null
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone
define void @deque_insert_front(i32 %val, %struct.deque* %deq) #0 {
entry:
  %val.addr = alloca i32, align 4
  %deq.addr = alloca %struct.deque*, align 8
  %n = alloca %struct.llnode*, align 8
  store i32 %val, i32* %val.addr, align 4
  store %struct.deque* %deq, %struct.deque** %deq.addr, align 8
  %0 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %tobool = icmp ne %struct.deque* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.deque_insert_front, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %call = call noalias i8* @malloc(i64 24) #4
  %1 = bitcast i8* %call to %struct.llnode*
  store %struct.llnode* %1, %struct.llnode** %n, align 8
  %2 = load i32, i32* %val.addr, align 4
  %3 = load %struct.llnode*, %struct.llnode** %n, align 8
  %item = getelementptr inbounds %struct.llnode, %struct.llnode* %3, i32 0, i32 0
  store i32 %2, i32* %item, align 8
  %4 = load %struct.llnode*, %struct.llnode** %n, align 8
  %prev = getelementptr inbounds %struct.llnode, %struct.llnode* %4, i32 0, i32 1
  store %struct.llnode* null, %struct.llnode** %prev, align 8
  %5 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front = getelementptr inbounds %struct.deque, %struct.deque* %5, i32 0, i32 0
  %6 = load %struct.llnode*, %struct.llnode** %front, align 8
  %7 = load %struct.llnode*, %struct.llnode** %n, align 8
  %next = getelementptr inbounds %struct.llnode, %struct.llnode* %7, i32 0, i32 2
  store %struct.llnode* %6, %struct.llnode** %next, align 8
  %8 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front1 = getelementptr inbounds %struct.deque, %struct.deque* %8, i32 0, i32 0
  %9 = load %struct.llnode*, %struct.llnode** %front1, align 8
  %tobool2 = icmp ne %struct.llnode* %9, null
  br i1 %tobool2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.end
  %10 = load %struct.llnode*, %struct.llnode** %n, align 8
  %11 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front4 = getelementptr inbounds %struct.deque, %struct.deque* %11, i32 0, i32 0
  %12 = load %struct.llnode*, %struct.llnode** %front4, align 8
  %prev5 = getelementptr inbounds %struct.llnode, %struct.llnode* %12, i32 0, i32 1
  store %struct.llnode* %10, %struct.llnode** %prev5, align 8
  br label %if.end7

if.else6:                                         ; preds = %if.end
  %13 = load %struct.llnode*, %struct.llnode** %n, align 8
  %14 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back = getelementptr inbounds %struct.deque, %struct.deque* %14, i32 0, i32 1
  store %struct.llnode* %13, %struct.llnode** %back, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then3
  %15 = load %struct.llnode*, %struct.llnode** %n, align 8
  %16 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front8 = getelementptr inbounds %struct.deque, %struct.deque* %16, i32 0, i32 0
  store %struct.llnode* %15, %struct.llnode** %front8, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @deque_insert_back(i32 %val, %struct.deque* %deq) #0 {
entry:
  %val.addr = alloca i32, align 4
  %deq.addr = alloca %struct.deque*, align 8
  %n = alloca %struct.llnode*, align 8
  store i32 %val, i32* %val.addr, align 4
  store %struct.deque* %deq, %struct.deque** %deq.addr, align 8
  %0 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %tobool = icmp ne %struct.deque* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.deque_insert_back, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %call = call noalias i8* @malloc(i64 24) #4
  %1 = bitcast i8* %call to %struct.llnode*
  store %struct.llnode* %1, %struct.llnode** %n, align 8
  %2 = load i32, i32* %val.addr, align 4
  %3 = load %struct.llnode*, %struct.llnode** %n, align 8
  %item = getelementptr inbounds %struct.llnode, %struct.llnode* %3, i32 0, i32 0
  store i32 %2, i32* %item, align 8
  %4 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back = getelementptr inbounds %struct.deque, %struct.deque* %4, i32 0, i32 1
  %5 = load %struct.llnode*, %struct.llnode** %back, align 8
  %6 = load %struct.llnode*, %struct.llnode** %n, align 8
  %prev = getelementptr inbounds %struct.llnode, %struct.llnode* %6, i32 0, i32 1
  store %struct.llnode* %5, %struct.llnode** %prev, align 8
  %7 = load %struct.llnode*, %struct.llnode** %n, align 8
  %next = getelementptr inbounds %struct.llnode, %struct.llnode* %7, i32 0, i32 2
  store %struct.llnode* null, %struct.llnode** %next, align 8
  %8 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back1 = getelementptr inbounds %struct.deque, %struct.deque* %8, i32 0, i32 1
  %9 = load %struct.llnode*, %struct.llnode** %back1, align 8
  %tobool2 = icmp ne %struct.llnode* %9, null
  br i1 %tobool2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.end
  %10 = load %struct.llnode*, %struct.llnode** %n, align 8
  %11 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back4 = getelementptr inbounds %struct.deque, %struct.deque* %11, i32 0, i32 1
  %12 = load %struct.llnode*, %struct.llnode** %back4, align 8
  %next5 = getelementptr inbounds %struct.llnode, %struct.llnode* %12, i32 0, i32 2
  store %struct.llnode* %10, %struct.llnode** %next5, align 8
  br label %if.end7

if.else6:                                         ; preds = %if.end
  %13 = load %struct.llnode*, %struct.llnode** %n, align 8
  %14 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front = getelementptr inbounds %struct.deque, %struct.deque* %14, i32 0, i32 0
  store %struct.llnode* %13, %struct.llnode** %front, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then3
  %15 = load %struct.llnode*, %struct.llnode** %n, align 8
  %16 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back8 = getelementptr inbounds %struct.deque, %struct.deque* %16, i32 0, i32 1
  store %struct.llnode* %15, %struct.llnode** %back8, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define i32 @deque_front(%struct.deque* %deq) #0 {
entry:
  %deq.addr = alloca %struct.deque*, align 8
  store %struct.deque* %deq, %struct.deque** %deq.addr, align 8
  %0 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %tobool = icmp ne %struct.deque* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.deque_front, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %call = call zeroext i1 @deque_is_empty(%struct.deque* %1)
  br i1 %call, label %if.else2, label %if.then1

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.deque_front, i32 0, i32 0)) #5
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front = getelementptr inbounds %struct.deque, %struct.deque* %2, i32 0, i32 0
  %3 = load %struct.llnode*, %struct.llnode** %front, align 8
  %item = getelementptr inbounds %struct.llnode, %struct.llnode* %3, i32 0, i32 0
  %4 = load i32, i32* %item, align 8
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define i32 @deque_remove_front(%struct.deque* %deq) #0 {
entry:
  %deq.addr = alloca %struct.deque*, align 8
  %backup = alloca %struct.llnode*, align 8
  %ret = alloca i32, align 4
  store %struct.deque* %deq, %struct.deque** %deq.addr, align 8
  %0 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %tobool = icmp ne %struct.deque* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.deque_remove_front, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %call = call zeroext i1 @deque_is_empty(%struct.deque* %1)
  br i1 %call, label %if.else2, label %if.then1

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.deque_remove_front, i32 0, i32 0)) #5
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front = getelementptr inbounds %struct.deque, %struct.deque* %2, i32 0, i32 0
  %3 = load %struct.llnode*, %struct.llnode** %front, align 8
  store %struct.llnode* %3, %struct.llnode** %backup, align 8
  %4 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front4 = getelementptr inbounds %struct.deque, %struct.deque* %4, i32 0, i32 0
  %5 = load %struct.llnode*, %struct.llnode** %front4, align 8
  %next = getelementptr inbounds %struct.llnode, %struct.llnode* %5, i32 0, i32 2
  %6 = load %struct.llnode*, %struct.llnode** %next, align 8
  %7 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front5 = getelementptr inbounds %struct.deque, %struct.deque* %7, i32 0, i32 0
  store %struct.llnode* %6, %struct.llnode** %front5, align 8
  %8 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front6 = getelementptr inbounds %struct.deque, %struct.deque* %8, i32 0, i32 0
  %9 = load %struct.llnode*, %struct.llnode** %front6, align 8
  %tobool7 = icmp ne %struct.llnode* %9, null
  br i1 %tobool7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.end3
  %10 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front9 = getelementptr inbounds %struct.deque, %struct.deque* %10, i32 0, i32 0
  %11 = load %struct.llnode*, %struct.llnode** %front9, align 8
  %prev = getelementptr inbounds %struct.llnode, %struct.llnode* %11, i32 0, i32 1
  store %struct.llnode* null, %struct.llnode** %prev, align 8
  br label %if.end11

if.else10:                                        ; preds = %if.end3
  %12 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back = getelementptr inbounds %struct.deque, %struct.deque* %12, i32 0, i32 1
  store %struct.llnode* null, %struct.llnode** %back, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then8
  %13 = load %struct.llnode*, %struct.llnode** %backup, align 8
  %item = getelementptr inbounds %struct.llnode, %struct.llnode* %13, i32 0, i32 0
  %14 = load i32, i32* %item, align 8
  store i32 %14, i32* %ret, align 4
  %15 = load %struct.llnode*, %struct.llnode** %backup, align 8
  %16 = bitcast %struct.llnode* %15 to i8*
  call void @free(i8* %16) #4
  %17 = load i32, i32* %ret, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone
define i32 @deque_back(%struct.deque* %deq) #0 {
entry:
  %deq.addr = alloca %struct.deque*, align 8
  store %struct.deque* %deq, %struct.deque** %deq.addr, align 8
  %0 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %tobool = icmp ne %struct.deque* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.deque_back, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %call = call zeroext i1 @deque_is_empty(%struct.deque* %1)
  br i1 %call, label %if.else2, label %if.then1

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.deque_back, i32 0, i32 0)) #5
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back = getelementptr inbounds %struct.deque, %struct.deque* %2, i32 0, i32 1
  %3 = load %struct.llnode*, %struct.llnode** %back, align 8
  %item = getelementptr inbounds %struct.llnode, %struct.llnode* %3, i32 0, i32 0
  %4 = load i32, i32* %item, align 8
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone
define i32 @deque_remove_back(%struct.deque* %deq) #0 {
entry:
  %deq.addr = alloca %struct.deque*, align 8
  %backup = alloca %struct.llnode*, align 8
  %ret = alloca i32, align 4
  store %struct.deque* %deq, %struct.deque** %deq.addr, align 8
  %0 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %tobool = icmp ne %struct.deque* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.deque_remove_back, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %call = call zeroext i1 @deque_is_empty(%struct.deque* %1)
  br i1 %call, label %if.else2, label %if.then1

if.then1:                                         ; preds = %if.end
  br label %if.end3

if.else2:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.deque_remove_back, i32 0, i32 0)) #5
  unreachable

if.end3:                                          ; preds = %if.then1
  %2 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back = getelementptr inbounds %struct.deque, %struct.deque* %2, i32 0, i32 1
  %3 = load %struct.llnode*, %struct.llnode** %back, align 8
  store %struct.llnode* %3, %struct.llnode** %backup, align 8
  %4 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back4 = getelementptr inbounds %struct.deque, %struct.deque* %4, i32 0, i32 1
  %5 = load %struct.llnode*, %struct.llnode** %back4, align 8
  %prev = getelementptr inbounds %struct.llnode, %struct.llnode* %5, i32 0, i32 1
  %6 = load %struct.llnode*, %struct.llnode** %prev, align 8
  %7 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back5 = getelementptr inbounds %struct.deque, %struct.deque* %7, i32 0, i32 1
  store %struct.llnode* %6, %struct.llnode** %back5, align 8
  %8 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back6 = getelementptr inbounds %struct.deque, %struct.deque* %8, i32 0, i32 1
  %9 = load %struct.llnode*, %struct.llnode** %back6, align 8
  %tobool7 = icmp ne %struct.llnode* %9, null
  br i1 %tobool7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.end3
  %10 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back9 = getelementptr inbounds %struct.deque, %struct.deque* %10, i32 0, i32 1
  %11 = load %struct.llnode*, %struct.llnode** %back9, align 8
  %next = getelementptr inbounds %struct.llnode, %struct.llnode* %11, i32 0, i32 2
  store %struct.llnode* null, %struct.llnode** %next, align 8
  br label %if.end11

if.else10:                                        ; preds = %if.end3
  %12 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front = getelementptr inbounds %struct.deque, %struct.deque* %12, i32 0, i32 0
  store %struct.llnode* null, %struct.llnode** %front, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then8
  %13 = load %struct.llnode*, %struct.llnode** %backup, align 8
  %item = getelementptr inbounds %struct.llnode, %struct.llnode* %13, i32 0, i32 0
  %14 = load i32, i32* %item, align 8
  store i32 %14, i32* %ret, align 4
  %15 = load %struct.llnode*, %struct.llnode** %backup, align 8
  %16 = bitcast %struct.llnode* %15 to i8*
  call void @free(i8* %16) #4
  %17 = load i32, i32* %ret, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone
define void @deque_print(%struct.deque* %deq) #0 {
entry:
  %deq.addr = alloca %struct.deque*, align 8
  %node = alloca %struct.llnode*, align 8
  store %struct.deque* %deq, %struct.deque** %deq.addr, align 8
  %0 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %tobool = icmp ne %struct.deque* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 113, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.deque_print, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front = getelementptr inbounds %struct.deque, %struct.deque* %1, i32 0, i32 0
  %2 = load %struct.llnode*, %struct.llnode** %front, align 8
  %cmp = icmp eq %struct.llnode* %2, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end2:                                          ; preds = %if.end
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  %3 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front4 = getelementptr inbounds %struct.deque, %struct.deque* %3, i32 0, i32 0
  %4 = load %struct.llnode*, %struct.llnode** %front4, align 8
  store %struct.llnode* %4, %struct.llnode** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end2
  %5 = load %struct.llnode*, %struct.llnode** %node, align 8
  %tobool5 = icmp ne %struct.llnode* %5, null
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.llnode*, %struct.llnode** %node, align 8
  %item = getelementptr inbounds %struct.llnode, %struct.llnode* %6, i32 0, i32 0
  %7 = load i32, i32* %item, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 %7)
  %8 = load %struct.llnode*, %struct.llnode** %node, align 8
  %next = getelementptr inbounds %struct.llnode, %struct.llnode* %8, i32 0, i32 2
  %9 = load %struct.llnode*, %struct.llnode** %next, align 8
  store %struct.llnode* %9, %struct.llnode** %node, align 8
  %10 = load %struct.llnode*, %struct.llnode** %node, align 8
  %tobool7 = icmp ne %struct.llnode* %10, null
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %while.body
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %return

return:                                           ; preds = %while.end, %if.then1
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone
define void @deque_print_reverse(%struct.deque* %deq) #0 {
entry:
  %deq.addr = alloca %struct.deque*, align 8
  %node = alloca %struct.llnode*, align 8
  store %struct.deque* %deq, %struct.deque** %deq.addr, align 8
  %0 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %tobool = icmp ne %struct.deque* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i32 129, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.deque_print_reverse, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %front = getelementptr inbounds %struct.deque, %struct.deque* %1, i32 0, i32 0
  %2 = load %struct.llnode*, %struct.llnode** %front, align 8
  %cmp = icmp eq %struct.llnode* %2, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end2:                                          ; preds = %if.end
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  %3 = load %struct.deque*, %struct.deque** %deq.addr, align 8
  %back = getelementptr inbounds %struct.deque, %struct.deque* %3, i32 0, i32 1
  %4 = load %struct.llnode*, %struct.llnode** %back, align 8
  store %struct.llnode* %4, %struct.llnode** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end2
  %5 = load %struct.llnode*, %struct.llnode** %node, align 8
  %tobool4 = icmp ne %struct.llnode* %5, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.llnode*, %struct.llnode** %node, align 8
  %item = getelementptr inbounds %struct.llnode, %struct.llnode* %6, i32 0, i32 0
  %7 = load i32, i32* %item, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 %7)
  %8 = load %struct.llnode*, %struct.llnode** %node, align 8
  %prev = getelementptr inbounds %struct.llnode, %struct.llnode* %8, i32 0, i32 1
  %9 = load %struct.llnode*, %struct.llnode** %prev, align 8
  store %struct.llnode* %9, %struct.llnode** %node, align 8
  %10 = load %struct.llnode*, %struct.llnode** %node, align 8
  %tobool6 = icmp ne %struct.llnode* %10, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %while.body
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %return

return:                                           ; preds = %while.end, %if.then1
  ret void
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 7.1.0 (https://github.com/llvm-mirror/clang.git 4519e2637fcc4bf6e3049a0a80e6a5e7b97667cb) (https://github.com/llvm-mirror/llvm.git dd3329aeb25d87d4ac6429c0af220f92e1ba5f26)"}
!1 = !{i32 1, !"wchar_size", i32 4}
