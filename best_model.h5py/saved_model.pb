ЂЕ

фƒ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
∞
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48ыш
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
І
Adam/v/dense_52/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/dense_52/bias/*
dtype0*
shape:*%
shared_nameAdam/v/dense_52/bias
y
(Adam/v/dense_52/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_52/bias*
_output_shapes
:*
dtype0
І
Adam/m/dense_52/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/dense_52/bias/*
dtype0*
shape:*%
shared_nameAdam/m/dense_52/bias
y
(Adam/m/dense_52/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_52/bias*
_output_shapes
:*
dtype0
±
Adam/v/dense_52/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/dense_52/kernel/*
dtype0*
shape
: *'
shared_nameAdam/v/dense_52/kernel
Б
*Adam/v/dense_52/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_52/kernel*
_output_shapes

: *
dtype0
±
Adam/m/dense_52/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/dense_52/kernel/*
dtype0*
shape
: *'
shared_nameAdam/m/dense_52/kernel
Б
*Adam/m/dense_52/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_52/kernel*
_output_shapes

: *
dtype0
І
Adam/v/dense_51/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/dense_51/bias/*
dtype0*
shape: *%
shared_nameAdam/v/dense_51/bias
y
(Adam/v/dense_51/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_51/bias*
_output_shapes
: *
dtype0
І
Adam/m/dense_51/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/dense_51/bias/*
dtype0*
shape: *%
shared_nameAdam/m/dense_51/bias
y
(Adam/m/dense_51/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_51/bias*
_output_shapes
: *
dtype0
≥
Adam/v/dense_51/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/dense_51/kernel/*
dtype0*
shape:
АИ *'
shared_nameAdam/v/dense_51/kernel
Г
*Adam/v/dense_51/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_51/kernel* 
_output_shapes
:
АИ *
dtype0
≥
Adam/m/dense_51/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/dense_51/kernel/*
dtype0*
shape:
АИ *'
shared_nameAdam/m/dense_51/kernel
Г
*Adam/m/dense_51/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_51/kernel* 
_output_shapes
:
АИ *
dtype0
™
Adam/v/conv2d_42/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_42/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_42/bias
{
)Adam/v/conv2d_42/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_42/bias*
_output_shapes
:@*
dtype0
™
Adam/m/conv2d_42/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_42/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_42/bias
{
)Adam/m/conv2d_42/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_42/bias*
_output_shapes
:@*
dtype0
Љ
Adam/v/conv2d_42/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_42/kernel/*
dtype0*
shape: @*(
shared_nameAdam/v/conv2d_42/kernel
Л
+Adam/v/conv2d_42/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_42/kernel*&
_output_shapes
: @*
dtype0
Љ
Adam/m/conv2d_42/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_42/kernel/*
dtype0*
shape: @*(
shared_nameAdam/m/conv2d_42/kernel
Л
+Adam/m/conv2d_42/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_42/kernel*&
_output_shapes
: @*
dtype0
™
Adam/v/conv2d_41/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_41/bias/*
dtype0*
shape: *&
shared_nameAdam/v/conv2d_41/bias
{
)Adam/v/conv2d_41/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_41/bias*
_output_shapes
: *
dtype0
™
Adam/m/conv2d_41/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_41/bias/*
dtype0*
shape: *&
shared_nameAdam/m/conv2d_41/bias
{
)Adam/m/conv2d_41/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_41/bias*
_output_shapes
: *
dtype0
Љ
Adam/v/conv2d_41/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_41/kernel/*
dtype0*
shape: *(
shared_nameAdam/v/conv2d_41/kernel
Л
+Adam/v/conv2d_41/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_41/kernel*&
_output_shapes
: *
dtype0
Љ
Adam/m/conv2d_41/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_41/kernel/*
dtype0*
shape: *(
shared_nameAdam/m/conv2d_41/kernel
Л
+Adam/m/conv2d_41/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_41/kernel*&
_output_shapes
: *
dtype0
О
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
В
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
Т
dense_52/biasVarHandleOp*
_output_shapes
: *

debug_namedense_52/bias/*
dtype0*
shape:*
shared_namedense_52/bias
k
!dense_52/bias/Read/ReadVariableOpReadVariableOpdense_52/bias*
_output_shapes
:*
dtype0
Ь
dense_52/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_52/kernel/*
dtype0*
shape
: * 
shared_namedense_52/kernel
s
#dense_52/kernel/Read/ReadVariableOpReadVariableOpdense_52/kernel*
_output_shapes

: *
dtype0
Т
dense_51/biasVarHandleOp*
_output_shapes
: *

debug_namedense_51/bias/*
dtype0*
shape: *
shared_namedense_51/bias
k
!dense_51/bias/Read/ReadVariableOpReadVariableOpdense_51/bias*
_output_shapes
: *
dtype0
Ю
dense_51/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_51/kernel/*
dtype0*
shape:
АИ * 
shared_namedense_51/kernel
u
#dense_51/kernel/Read/ReadVariableOpReadVariableOpdense_51/kernel* 
_output_shapes
:
АИ *
dtype0
Х
conv2d_42/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_42/bias/*
dtype0*
shape:@*
shared_nameconv2d_42/bias
m
"conv2d_42/bias/Read/ReadVariableOpReadVariableOpconv2d_42/bias*
_output_shapes
:@*
dtype0
І
conv2d_42/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_42/kernel/*
dtype0*
shape: @*!
shared_nameconv2d_42/kernel
}
$conv2d_42/kernel/Read/ReadVariableOpReadVariableOpconv2d_42/kernel*&
_output_shapes
: @*
dtype0
Х
conv2d_41/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_41/bias/*
dtype0*
shape: *
shared_nameconv2d_41/bias
m
"conv2d_41/bias/Read/ReadVariableOpReadVariableOpconv2d_41/bias*
_output_shapes
: *
dtype0
І
conv2d_41/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_41/kernel/*
dtype0*
shape: *!
shared_nameconv2d_41/kernel
}
$conv2d_41/kernel/Read/ReadVariableOpReadVariableOpconv2d_41/kernel*&
_output_shapes
: *
dtype0
Ц
serving_default_conv2d_41_inputPlaceholder*1
_output_shapes
:€€€€€€€€€ЦЦ*
dtype0*&
shape:€€€€€€€€€ЦЦ
ќ
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_41_inputconv2d_41/kernelconv2d_41/biasconv2d_42/kernelconv2d_42/biasdense_51/kerneldense_51/biasdense_52/kerneldense_52/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_216780

NoOpNoOp
еO
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*†O
valueЦOBУO BМO
ґ
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
О
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 
•
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)_random_generator* 
»
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op*
О
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 
•
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?_random_generator* 
О
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
•
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses
L_random_generator* 
¶
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias*
¶
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias*
<
0
1
02
13
S4
T5
[6
\7*
<
0
1
02
13
S4
T5
[6
\7*
* 
∞
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

btrace_0
ctrace_1* 

dtrace_0
etrace_1* 
* 
Б
f
_variables
g_iterations
h_learning_rate
i_index_dict
j
_momentums
k_velocities
l_update_step_xla*

mserving_default* 

0
1*

0
1*
* 
У
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

strace_0* 

ttrace_0* 
`Z
VARIABLE_VALUEconv2d_41/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_41/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
С
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 

ztrace_0* 

{trace_0* 
* 
* 
* 
Т
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
Аlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

Бtrace_0
Вtrace_1* 

Гtrace_0
Дtrace_1* 
* 

00
11*

00
11*
* 
Ш
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

Кtrace_0* 

Лtrace_0* 
`Z
VARIABLE_VALUEconv2d_42/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_42/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 

Сtrace_0* 

Тtrace_0* 
* 
* 
* 
Ц
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

Шtrace_0
Щtrace_1* 

Ъtrace_0
Ыtrace_1* 
* 
* 
* 
* 
Ц
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
†layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

°trace_0* 

Ґtrace_0* 
* 
* 
* 
Ц
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 

®trace_0
©trace_1* 

™trace_0
Ђtrace_1* 
* 

S0
T1*

S0
T1*
* 
Ш
ђnon_trainable_variables
≠layers
Ѓmetrics
 ѓlayer_regularization_losses
∞layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

±trace_0* 

≤trace_0* 
_Y
VARIABLE_VALUEdense_51/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_51/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

[0
\1*

[0
\1*
* 
Ш
≥non_trainable_variables
іlayers
µmetrics
 ґlayer_regularization_losses
Јlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

Єtrace_0* 

єtrace_0* 
_Y
VARIABLE_VALUEdense_52/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_52/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
0
1
2
3
4
5
6
7
	8

9*

Ї0
ї1*
* 
* 
* 
* 
* 
* 
Т
g0
Љ1
љ2
Њ3
њ4
ј5
Ѕ6
¬7
√8
ƒ9
≈10
∆11
«12
»13
…14
 15
Ћ16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
Љ0
Њ1
ј2
¬3
ƒ4
∆5
»6
 7*
D
љ0
њ1
Ѕ2
√3
≈4
«5
…6
Ћ7*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
ћ	variables
Ќ	keras_api

ќtotal

ѕcount*
M
–	variables
—	keras_api

“total

”count
‘
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_41/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_41/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_41/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_41/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_42/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_42/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_42/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_42/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_51/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_51/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_51/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_51/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_52/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_52/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_52/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_52/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*

ќ0
ѕ1*

ћ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

“0
”1*

–	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
п
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_41/kernelconv2d_41/biasconv2d_42/kernelconv2d_42/biasdense_51/kerneldense_51/biasdense_52/kerneldense_52/bias	iterationlearning_rateAdam/m/conv2d_41/kernelAdam/v/conv2d_41/kernelAdam/m/conv2d_41/biasAdam/v/conv2d_41/biasAdam/m/conv2d_42/kernelAdam/v/conv2d_42/kernelAdam/m/conv2d_42/biasAdam/v/conv2d_42/biasAdam/m/dense_51/kernelAdam/v/dense_51/kernelAdam/m/dense_51/biasAdam/v/dense_51/biasAdam/m/dense_52/kernelAdam/v/dense_52/kernelAdam/m/dense_52/biasAdam/v/dense_52/biastotal_1count_1totalcountConst*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_217174
к
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_41/kernelconv2d_41/biasconv2d_42/kernelconv2d_42/biasdense_51/kerneldense_51/biasdense_52/kerneldense_52/bias	iterationlearning_rateAdam/m/conv2d_41/kernelAdam/v/conv2d_41/kernelAdam/m/conv2d_41/biasAdam/v/conv2d_41/biasAdam/m/conv2d_42/kernelAdam/v/conv2d_42/kernelAdam/m/conv2d_42/biasAdam/v/conv2d_42/biasAdam/m/dense_51/kernelAdam/v/dense_51/kernelAdam/m/dense_51/biasAdam/v/dense_51/biasAdam/m/dense_52/kernelAdam/v/dense_52/kernelAdam/m/dense_52/biasAdam/v/dense_52/biastotal_1count_1totalcount**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_217273ј”
®

e
F__inference_dropout_32_layer_call_and_return_conditional_losses_216563

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕО
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Х
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИc
IdentityIdentitydropout/SelectV2:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€АИ:Q M
)
_output_shapes
:€€€€€€€€€АИ
 
_user_specified_nameinputs
©
G
+__inference_dropout_32_layer_call_fn_216915

inputs
identity≥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€АИ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_216630b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€АИ:Q M
)
_output_shapes
:€€€€€€€€€АИ
 
_user_specified_nameinputs
Ѕ
G
+__inference_dropout_30_layer_call_fn_216820

inputs
identityє
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€KK * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_216611h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€KK :W S
/
_output_shapes
:€€€€€€€€€KK 
 
_user_specified_nameinputs
“

e
F__inference_dropout_30_layer_call_and_return_conditional_losses_216513

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕФ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€KK :W S
/
_output_shapes
:€€€€€€€€€KK 
 
_user_specified_nameinputs
ј
ю
E__inference_conv2d_41_layer_call_and_return_conditional_losses_216800

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ЦЦ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ЦЦ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ЦЦ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ЦЦ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€ЦЦ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:€€€€€€€€€ЦЦ
 
_user_specified_nameinputs
”

ч
D__inference_dense_51_layer_call_and_return_conditional_losses_216575

inputs2
matmul_readvariableop_resource:
АИ -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АИ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€АИ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Q M
)
_output_shapes
:€€€€€€€€€АИ
 
_user_specified_nameinputs
®

e
F__inference_dropout_32_layer_call_and_return_conditional_losses_216927

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕО
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Х
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИc
IdentityIdentitydropout/SelectV2:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€АИ:Q M
)
_output_shapes
:€€€€€€€€€АИ
 
_user_specified_nameinputs
п
d
+__inference_dropout_30_layer_call_fn_216815

inputs
identityИҐStatefulPartitionedCall…
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€KK * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_216513w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€KK <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€KK 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€KK 
 
_user_specified_nameinputs
у
ќ
$__inference_signature_wrapper_216780
conv2d_41_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
АИ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identityИҐStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallconv2d_41_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_216462o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€ЦЦ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name216776:&"
 
_user_specified_name216774:&"
 
_user_specified_name216772:&"
 
_user_specified_name216770:&"
 
_user_specified_name216768:&"
 
_user_specified_name216766:&"
 
_user_specified_name216764:&"
 
_user_specified_name216762:b ^
1
_output_shapes
:€€€€€€€€€ЦЦ
)
_user_specified_nameconv2d_41_input
µ
ю
E__inference_conv2d_42_layer_call_and_return_conditional_losses_216525

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€II@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€II@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€II@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€II@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€KK : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€KK 
 
_user_specified_nameinputs
∞/
М
I__inference_sequential_20_layer_call_and_return_conditional_losses_216598
conv2d_41_input*
conv2d_41_216496: 
conv2d_41_216498: *
conv2d_42_216526: @
conv2d_42_216528:@#
dense_51_216576:
АИ 
dense_51_216578: !
dense_52_216592: 
dense_52_216594:
identityИҐ!conv2d_41/StatefulPartitionedCallҐ!conv2d_42/StatefulPartitionedCallҐ dense_51/StatefulPartitionedCallҐ dense_52/StatefulPartitionedCallҐ"dropout_30/StatefulPartitionedCallҐ"dropout_31/StatefulPartitionedCallҐ"dropout_32/StatefulPartitionedCallЗ
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCallconv2d_41_inputconv2d_41_216496conv2d_41_216498*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€ЦЦ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_216495ф
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€KK * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_216467ч
"dropout_30/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€KK * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_216513°
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall+dropout_30/StatefulPartitionedCall:output:0conv2d_42_216526conv2d_42_216528*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€II@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_216525ф
 max_pooling2d_40/PartitionedCallPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€$$@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_216477Ь
"dropout_31/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_40/PartitionedCall:output:0#^dropout_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€$$@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_216543г
flatten_18/PartitionedCallPartitionedCall+dropout_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€АИ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_18_layer_call_and_return_conditional_losses_216550Р
"dropout_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_18/PartitionedCall:output:0#^dropout_31/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€АИ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_216563Х
 dense_51/StatefulPartitionedCallStatefulPartitionedCall+dropout_32/StatefulPartitionedCall:output:0dense_51_216576dense_51_216578*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_51_layer_call_and_return_conditional_losses_216575У
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0dense_52_216592dense_52_216594*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_52_layer_call_and_return_conditional_losses_216591x
IdentityIdentity)dense_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Я
NoOpNoOp"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall#^dropout_30/StatefulPartitionedCall#^dropout_31/StatefulPartitionedCall#^dropout_32/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€ЦЦ: : : : : : : : 2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2H
"dropout_30/StatefulPartitionedCall"dropout_30/StatefulPartitionedCall2H
"dropout_31/StatefulPartitionedCall"dropout_31/StatefulPartitionedCall2H
"dropout_32/StatefulPartitionedCall"dropout_32/StatefulPartitionedCall:&"
 
_user_specified_name216594:&"
 
_user_specified_name216592:&"
 
_user_specified_name216578:&"
 
_user_specified_name216576:&"
 
_user_specified_name216528:&"
 
_user_specified_name216526:&"
 
_user_specified_name216498:&"
 
_user_specified_name216496:b ^
1
_output_shapes
:€€€€€€€€€ЦЦ
)
_user_specified_nameconv2d_41_input
†
Я
*__inference_conv2d_41_layer_call_fn_216789

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€ЦЦ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_216495y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ЦЦ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€ЦЦ: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name216785:&"
 
_user_specified_name216783:Y U
1
_output_shapes
:€€€€€€€€€ЦЦ
 
_user_specified_nameinputs
б
d
F__inference_dropout_32_layer_call_and_return_conditional_losses_216932

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:€€€€€€€€€АИ]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€АИ:Q M
)
_output_shapes
:€€€€€€€€€АИ
 
_user_specified_nameinputs
в*
Э
I__inference_sequential_20_layer_call_and_return_conditional_losses_216643
conv2d_41_input*
conv2d_41_216601: 
conv2d_41_216603: *
conv2d_42_216613: @
conv2d_42_216615:@#
dense_51_216632:
АИ 
dense_51_216634: !
dense_52_216637: 
dense_52_216639:
identityИҐ!conv2d_41/StatefulPartitionedCallҐ!conv2d_42/StatefulPartitionedCallҐ dense_51/StatefulPartitionedCallҐ dense_52/StatefulPartitionedCallЗ
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCallconv2d_41_inputconv2d_41_216601conv2d_41_216603*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€ЦЦ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_216495ф
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€KK * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_216467з
dropout_30/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€KK * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_216611Щ
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall#dropout_30/PartitionedCall:output:0conv2d_42_216613conv2d_42_216615*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€II@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_216525ф
 max_pooling2d_40/PartitionedCallPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€$$@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_216477з
dropout_31/PartitionedCallPartitionedCall)max_pooling2d_40/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€$$@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_216623џ
flatten_18/PartitionedCallPartitionedCall#dropout_31/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€АИ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_18_layer_call_and_return_conditional_losses_216550џ
dropout_32/PartitionedCallPartitionedCall#flatten_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€АИ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_216630Н
 dense_51/StatefulPartitionedCallStatefulPartitionedCall#dropout_32/PartitionedCall:output:0dense_51_216632dense_51_216634*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_51_layer_call_and_return_conditional_losses_216575У
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0dense_52_216637dense_52_216639*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_52_layer_call_and_return_conditional_losses_216591x
IdentityIdentity)dense_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€∞
NoOpNoOp"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€ЦЦ: : : : : : : : 2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall:&"
 
_user_specified_name216639:&"
 
_user_specified_name216637:&"
 
_user_specified_name216634:&"
 
_user_specified_name216632:&"
 
_user_specified_name216615:&"
 
_user_specified_name216613:&"
 
_user_specified_name216603:&"
 
_user_specified_name216601:b ^
1
_output_shapes
:€€€€€€€€€ЦЦ
)
_user_specified_nameconv2d_41_input
б
d
F__inference_dropout_32_layer_call_and_return_conditional_losses_216630

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:€€€€€€€€€АИ]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€АИ:Q M
)
_output_shapes
:€€€€€€€€€АИ
 
_user_specified_nameinputs
•
Ў
.__inference_sequential_20_layer_call_fn_216664
conv2d_41_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
АИ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identityИҐStatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallconv2d_41_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_20_layer_call_and_return_conditional_losses_216598o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€ЦЦ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name216660:&"
 
_user_specified_name216658:&"
 
_user_specified_name216656:&"
 
_user_specified_name216654:&"
 
_user_specified_name216652:&"
 
_user_specified_name216650:&"
 
_user_specified_name216648:&"
 
_user_specified_name216646:b ^
1
_output_shapes
:€€€€€€€€€ЦЦ
)
_user_specified_nameconv2d_41_input
µ
G
+__inference_flatten_18_layer_call_fn_216899

inputs
identity≥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€АИ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_18_layer_call_and_return_conditional_losses_216550b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€$$@:W S
/
_output_shapes
:€€€€€€€€€$$@
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_216810

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
„
d
+__inference_dropout_32_layer_call_fn_216910

inputs
identityИҐStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€АИ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_216563q
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:€€€€€€€€€АИ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€АИ22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:€€€€€€€€€АИ
 
_user_specified_nameinputs
ўи
≥
__inference__traced_save_217174
file_prefixA
'read_disablecopyonread_conv2d_41_kernel: 5
'read_1_disablecopyonread_conv2d_41_bias: C
)read_2_disablecopyonread_conv2d_42_kernel: @5
'read_3_disablecopyonread_conv2d_42_bias:@<
(read_4_disablecopyonread_dense_51_kernel:
АИ 4
&read_5_disablecopyonread_dense_51_bias: :
(read_6_disablecopyonread_dense_52_kernel: 4
&read_7_disablecopyonread_dense_52_bias:,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: K
1read_10_disablecopyonread_adam_m_conv2d_41_kernel: K
1read_11_disablecopyonread_adam_v_conv2d_41_kernel: =
/read_12_disablecopyonread_adam_m_conv2d_41_bias: =
/read_13_disablecopyonread_adam_v_conv2d_41_bias: K
1read_14_disablecopyonread_adam_m_conv2d_42_kernel: @K
1read_15_disablecopyonread_adam_v_conv2d_42_kernel: @=
/read_16_disablecopyonread_adam_m_conv2d_42_bias:@=
/read_17_disablecopyonread_adam_v_conv2d_42_bias:@D
0read_18_disablecopyonread_adam_m_dense_51_kernel:
АИ D
0read_19_disablecopyonread_adam_v_dense_51_kernel:
АИ <
.read_20_disablecopyonread_adam_m_dense_51_bias: <
.read_21_disablecopyonread_adam_v_dense_51_bias: B
0read_22_disablecopyonread_adam_m_dense_52_kernel: B
0read_23_disablecopyonread_adam_v_dense_52_kernel: <
.read_24_disablecopyonread_adam_m_dense_52_bias:<
.read_25_disablecopyonread_adam_v_dense_52_bias:+
!read_26_disablecopyonread_total_1: +
!read_27_disablecopyonread_count_1: )
read_28_disablecopyonread_total: )
read_29_disablecopyonread_count: 
savev2_const
identity_61ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_41_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_41_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_41_bias"/device:CPU:0*
_output_shapes
 £
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_41_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_42_kernel"/device:CPU:0*
_output_shapes
 ±
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_42_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: @{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_42_bias"/device:CPU:0*
_output_shapes
 £
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_42_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_dense_51_kernel"/device:CPU:0*
_output_shapes
 ™
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_dense_51_kernel^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АИ *
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
АИ e

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АИ z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_dense_51_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_dense_51_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_dense_52_kernel"/device:CPU:0*
_output_shapes
 ®
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_dense_52_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

: z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_dense_52_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_dense_52_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ъ
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ю
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: Ж
Read_10/DisableCopyOnReadDisableCopyOnRead1read_10_disablecopyonread_adam_m_conv2d_41_kernel"/device:CPU:0*
_output_shapes
 ї
Read_10/ReadVariableOpReadVariableOp1read_10_disablecopyonread_adam_m_conv2d_41_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
: Ж
Read_11/DisableCopyOnReadDisableCopyOnRead1read_11_disablecopyonread_adam_v_conv2d_41_kernel"/device:CPU:0*
_output_shapes
 ї
Read_11/ReadVariableOpReadVariableOp1read_11_disablecopyonread_adam_v_conv2d_41_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*&
_output_shapes
: Д
Read_12/DisableCopyOnReadDisableCopyOnRead/read_12_disablecopyonread_adam_m_conv2d_41_bias"/device:CPU:0*
_output_shapes
 ≠
Read_12/ReadVariableOpReadVariableOp/read_12_disablecopyonread_adam_m_conv2d_41_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: Д
Read_13/DisableCopyOnReadDisableCopyOnRead/read_13_disablecopyonread_adam_v_conv2d_41_bias"/device:CPU:0*
_output_shapes
 ≠
Read_13/ReadVariableOpReadVariableOp/read_13_disablecopyonread_adam_v_conv2d_41_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: Ж
Read_14/DisableCopyOnReadDisableCopyOnRead1read_14_disablecopyonread_adam_m_conv2d_42_kernel"/device:CPU:0*
_output_shapes
 ї
Read_14/ReadVariableOpReadVariableOp1read_14_disablecopyonread_adam_m_conv2d_42_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Ж
Read_15/DisableCopyOnReadDisableCopyOnRead1read_15_disablecopyonread_adam_v_conv2d_42_kernel"/device:CPU:0*
_output_shapes
 ї
Read_15/ReadVariableOpReadVariableOp1read_15_disablecopyonread_adam_v_conv2d_42_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Д
Read_16/DisableCopyOnReadDisableCopyOnRead/read_16_disablecopyonread_adam_m_conv2d_42_bias"/device:CPU:0*
_output_shapes
 ≠
Read_16/ReadVariableOpReadVariableOp/read_16_disablecopyonread_adam_m_conv2d_42_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_17/DisableCopyOnReadDisableCopyOnRead/read_17_disablecopyonread_adam_v_conv2d_42_bias"/device:CPU:0*
_output_shapes
 ≠
Read_17/ReadVariableOpReadVariableOp/read_17_disablecopyonread_adam_v_conv2d_42_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@Е
Read_18/DisableCopyOnReadDisableCopyOnRead0read_18_disablecopyonread_adam_m_dense_51_kernel"/device:CPU:0*
_output_shapes
 і
Read_18/ReadVariableOpReadVariableOp0read_18_disablecopyonread_adam_m_dense_51_kernel^Read_18/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АИ *
dtype0q
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
АИ g
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АИ Е
Read_19/DisableCopyOnReadDisableCopyOnRead0read_19_disablecopyonread_adam_v_dense_51_kernel"/device:CPU:0*
_output_shapes
 і
Read_19/ReadVariableOpReadVariableOp0read_19_disablecopyonread_adam_v_dense_51_kernel^Read_19/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АИ *
dtype0q
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
АИ g
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АИ Г
Read_20/DisableCopyOnReadDisableCopyOnRead.read_20_disablecopyonread_adam_m_dense_51_bias"/device:CPU:0*
_output_shapes
 ђ
Read_20/ReadVariableOpReadVariableOp.read_20_disablecopyonread_adam_m_dense_51_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_21/DisableCopyOnReadDisableCopyOnRead.read_21_disablecopyonread_adam_v_dense_51_bias"/device:CPU:0*
_output_shapes
 ђ
Read_21/ReadVariableOpReadVariableOp.read_21_disablecopyonread_adam_v_dense_51_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
Read_22/DisableCopyOnReadDisableCopyOnRead0read_22_disablecopyonread_adam_m_dense_52_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_22/ReadVariableOpReadVariableOp0read_22_disablecopyonread_adam_m_dense_52_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

: Е
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_adam_v_dense_52_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_adam_v_dense_52_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

: Г
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_adam_m_dense_52_bias"/device:CPU:0*
_output_shapes
 ђ
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_adam_m_dense_52_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:Г
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_v_dense_52_bias"/device:CPU:0*
_output_shapes
 ђ
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_v_dense_52_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_26/DisableCopyOnReadDisableCopyOnRead!read_26_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_26/ReadVariableOpReadVariableOp!read_26_disablecopyonread_total_1^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_27/DisableCopyOnReadDisableCopyOnRead!read_27_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_27/ReadVariableOpReadVariableOp!read_27_disablecopyonread_count_1^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_28/DisableCopyOnReadDisableCopyOnReadread_28_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_28/ReadVariableOpReadVariableOpread_28_disablecopyonread_total^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_29/DisableCopyOnReadDisableCopyOnReadread_29_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_29/ReadVariableOpReadVariableOpread_29_disablecopyonread_count^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: Є
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*б
value„B‘B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЂ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Е
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *-
dtypes#
!2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_60Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_61IdentityIdentity_60:output:0^NoOp*
T0*
_output_shapes
: ’
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_61Identity_61:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:40
.
_user_specified_nameAdam/v/dense_52/bias:40
.
_user_specified_nameAdam/m/dense_52/bias:62
0
_user_specified_nameAdam/v/dense_52/kernel:62
0
_user_specified_nameAdam/m/dense_52/kernel:40
.
_user_specified_nameAdam/v/dense_51/bias:40
.
_user_specified_nameAdam/m/dense_51/bias:62
0
_user_specified_nameAdam/v/dense_51/kernel:62
0
_user_specified_nameAdam/m/dense_51/kernel:51
/
_user_specified_nameAdam/v/conv2d_42/bias:51
/
_user_specified_nameAdam/m/conv2d_42/bias:73
1
_user_specified_nameAdam/v/conv2d_42/kernel:73
1
_user_specified_nameAdam/m/conv2d_42/kernel:51
/
_user_specified_nameAdam/v/conv2d_41/bias:51
/
_user_specified_nameAdam/m/conv2d_41/bias:73
1
_user_specified_nameAdam/v/conv2d_41/kernel:73
1
_user_specified_nameAdam/m/conv2d_41/kernel:-
)
'
_user_specified_namelearning_rate:)	%
#
_user_specified_name	iteration:-)
'
_user_specified_namedense_52/bias:/+
)
_user_specified_namedense_52/kernel:-)
'
_user_specified_namedense_51/bias:/+
)
_user_specified_namedense_51/kernel:.*
(
_user_specified_nameconv2d_42/bias:0,
*
_user_specified_nameconv2d_42/kernel:.*
(
_user_specified_nameconv2d_41/bias:0,
*
_user_specified_nameconv2d_41/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ф
Ш
)__inference_dense_51_layer_call_fn_216941

inputs
unknown:
АИ 
	unknown_0: 
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_51_layer_call_and_return_conditional_losses_216575o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€АИ: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name216937:&"
 
_user_specified_name216935:Q M
)
_output_shapes
:€€€€€€€€€АИ
 
_user_specified_nameinputs
ђ;
Ы
!__inference__wrapped_model_216462
conv2d_41_inputP
6sequential_20_conv2d_41_conv2d_readvariableop_resource: E
7sequential_20_conv2d_41_biasadd_readvariableop_resource: P
6sequential_20_conv2d_42_conv2d_readvariableop_resource: @E
7sequential_20_conv2d_42_biasadd_readvariableop_resource:@I
5sequential_20_dense_51_matmul_readvariableop_resource:
АИ D
6sequential_20_dense_51_biasadd_readvariableop_resource: G
5sequential_20_dense_52_matmul_readvariableop_resource: D
6sequential_20_dense_52_biasadd_readvariableop_resource:
identityИҐ.sequential_20/conv2d_41/BiasAdd/ReadVariableOpҐ-sequential_20/conv2d_41/Conv2D/ReadVariableOpҐ.sequential_20/conv2d_42/BiasAdd/ReadVariableOpҐ-sequential_20/conv2d_42/Conv2D/ReadVariableOpҐ-sequential_20/dense_51/BiasAdd/ReadVariableOpҐ,sequential_20/dense_51/MatMul/ReadVariableOpҐ-sequential_20/dense_52/BiasAdd/ReadVariableOpҐ,sequential_20/dense_52/MatMul/ReadVariableOpђ
-sequential_20/conv2d_41/Conv2D/ReadVariableOpReadVariableOp6sequential_20_conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0‘
sequential_20/conv2d_41/Conv2DConv2Dconv2d_41_input5sequential_20/conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ЦЦ *
paddingSAME*
strides
Ґ
.sequential_20/conv2d_41/BiasAdd/ReadVariableOpReadVariableOp7sequential_20_conv2d_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0«
sequential_20/conv2d_41/BiasAddBiasAdd'sequential_20/conv2d_41/Conv2D:output:06sequential_20/conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ЦЦ К
sequential_20/conv2d_41/ReluRelu(sequential_20/conv2d_41/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ЦЦ  
&sequential_20/max_pooling2d_39/MaxPoolMaxPool*sequential_20/conv2d_41/Relu:activations:0*/
_output_shapes
:€€€€€€€€€KK *
ksize
*
paddingVALID*
strides
Ш
!sequential_20/dropout_30/IdentityIdentity/sequential_20/max_pooling2d_39/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK ђ
-sequential_20/conv2d_42/Conv2D/ReadVariableOpReadVariableOp6sequential_20_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0о
sequential_20/conv2d_42/Conv2DConv2D*sequential_20/dropout_30/Identity:output:05sequential_20/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€II@*
paddingVALID*
strides
Ґ
.sequential_20/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp7sequential_20_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0≈
sequential_20/conv2d_42/BiasAddBiasAdd'sequential_20/conv2d_42/Conv2D:output:06sequential_20/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€II@И
sequential_20/conv2d_42/ReluRelu(sequential_20/conv2d_42/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€II@ 
&sequential_20/max_pooling2d_40/MaxPoolMaxPool*sequential_20/conv2d_42/Relu:activations:0*/
_output_shapes
:€€€€€€€€€$$@*
ksize
*
paddingVALID*
strides
Ш
!sequential_20/dropout_31/IdentityIdentity/sequential_20/max_pooling2d_40/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@o
sequential_20/flatten_18/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ D і
 sequential_20/flatten_18/ReshapeReshape*sequential_20/dropout_31/Identity:output:0'sequential_20/flatten_18/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИМ
!sequential_20/dropout_32/IdentityIdentity)sequential_20/flatten_18/Reshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИ§
,sequential_20/dense_51/MatMul/ReadVariableOpReadVariableOp5sequential_20_dense_51_matmul_readvariableop_resource* 
_output_shapes
:
АИ *
dtype0ї
sequential_20/dense_51/MatMulMatMul*sequential_20/dropout_32/Identity:output:04sequential_20/dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ †
-sequential_20/dense_51/BiasAdd/ReadVariableOpReadVariableOp6sequential_20_dense_51_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ї
sequential_20/dense_51/BiasAddBiasAdd'sequential_20/dense_51/MatMul:product:05sequential_20/dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ ~
sequential_20/dense_51/ReluRelu'sequential_20/dense_51/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Ґ
,sequential_20/dense_52/MatMul/ReadVariableOpReadVariableOp5sequential_20_dense_52_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ї
sequential_20/dense_52/MatMulMatMul)sequential_20/dense_51/Relu:activations:04sequential_20/dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
-sequential_20/dense_52/BiasAdd/ReadVariableOpReadVariableOp6sequential_20_dense_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ї
sequential_20/dense_52/BiasAddBiasAdd'sequential_20/dense_52/MatMul:product:05sequential_20/dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
sequential_20/dense_52/SoftmaxSoftmax'sequential_20/dense_52/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€w
IdentityIdentity(sequential_20/dense_52/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ґ
NoOpNoOp/^sequential_20/conv2d_41/BiasAdd/ReadVariableOp.^sequential_20/conv2d_41/Conv2D/ReadVariableOp/^sequential_20/conv2d_42/BiasAdd/ReadVariableOp.^sequential_20/conv2d_42/Conv2D/ReadVariableOp.^sequential_20/dense_51/BiasAdd/ReadVariableOp-^sequential_20/dense_51/MatMul/ReadVariableOp.^sequential_20/dense_52/BiasAdd/ReadVariableOp-^sequential_20/dense_52/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€ЦЦ: : : : : : : : 2`
.sequential_20/conv2d_41/BiasAdd/ReadVariableOp.sequential_20/conv2d_41/BiasAdd/ReadVariableOp2^
-sequential_20/conv2d_41/Conv2D/ReadVariableOp-sequential_20/conv2d_41/Conv2D/ReadVariableOp2`
.sequential_20/conv2d_42/BiasAdd/ReadVariableOp.sequential_20/conv2d_42/BiasAdd/ReadVariableOp2^
-sequential_20/conv2d_42/Conv2D/ReadVariableOp-sequential_20/conv2d_42/Conv2D/ReadVariableOp2^
-sequential_20/dense_51/BiasAdd/ReadVariableOp-sequential_20/dense_51/BiasAdd/ReadVariableOp2\
,sequential_20/dense_51/MatMul/ReadVariableOp,sequential_20/dense_51/MatMul/ReadVariableOp2^
-sequential_20/dense_52/BiasAdd/ReadVariableOp-sequential_20/dense_52/BiasAdd/ReadVariableOp2\
,sequential_20/dense_52/MatMul/ReadVariableOp,sequential_20/dense_52/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:b ^
1
_output_shapes
:€€€€€€€€€ЦЦ
)
_user_specified_nameconv2d_41_input
Ш
Я
*__inference_conv2d_42_layer_call_fn_216846

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€II@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_216525w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€II@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€KK : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name216842:&"
 
_user_specified_name216840:W S
/
_output_shapes
:€€€€€€€€€KK 
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_216477

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_216867

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
µ
ю
E__inference_conv2d_42_layer_call_and_return_conditional_losses_216857

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€II@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€II@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€II@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€II@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€KK : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€KK 
 
_user_specified_nameinputs
щ
d
F__inference_dropout_30_layer_call_and_return_conditional_losses_216611

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€KK c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€KK :W S
/
_output_shapes
:€€€€€€€€€KK 
 
_user_specified_nameinputs
 
b
F__inference_flatten_18_layer_call_and_return_conditional_losses_216550

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ D ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€$$@:W S
/
_output_shapes
:€€€€€€€€€$$@
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_216467

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
–

х
D__inference_dense_52_layer_call_and_return_conditional_losses_216591

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Ї
M
1__inference_max_pooling2d_39_layer_call_fn_216805

inputs
identityЏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_216467Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
”

ч
D__inference_dense_51_layer_call_and_return_conditional_losses_216952

inputs2
matmul_readvariableop_resource:
АИ -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АИ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€АИ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Q M
)
_output_shapes
:€€€€€€€€€АИ
 
_user_specified_nameinputs
п
d
+__inference_dropout_31_layer_call_fn_216872

inputs
identityИҐStatefulPartitionedCall…
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€$$@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_216543w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€$$@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€$$@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€$$@
 
_user_specified_nameinputs
ј
ю
E__inference_conv2d_41_layer_call_and_return_conditional_losses_216495

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ЦЦ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ЦЦ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ЦЦ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ЦЦ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€ЦЦ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:€€€€€€€€€ЦЦ
 
_user_specified_nameinputs
“

e
F__inference_dropout_31_layer_call_and_return_conditional_losses_216889

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕФ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€$$@:W S
/
_output_shapes
:€€€€€€€€€$$@
 
_user_specified_nameinputs
щ
d
F__inference_dropout_30_layer_call_and_return_conditional_losses_216837

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€KK c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€KK :W S
/
_output_shapes
:€€€€€€€€€KK 
 
_user_specified_nameinputs
о
Ц
)__inference_dense_52_layer_call_fn_216961

inputs
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_52_layer_call_and_return_conditional_losses_216591o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name216957:&"
 
_user_specified_name216955:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Ѕ
G
+__inference_dropout_31_layer_call_fn_216877

inputs
identityє
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€$$@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_31_layer_call_and_return_conditional_losses_216623h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€$$@:W S
/
_output_shapes
:€€€€€€€€€$$@
 
_user_specified_nameinputs
 
b
F__inference_flatten_18_layer_call_and_return_conditional_losses_216905

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ D ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€АИ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€$$@:W S
/
_output_shapes
:€€€€€€€€€$$@
 
_user_specified_nameinputs
иЛ
≈
"__inference__traced_restore_217273
file_prefix;
!assignvariableop_conv2d_41_kernel: /
!assignvariableop_1_conv2d_41_bias: =
#assignvariableop_2_conv2d_42_kernel: @/
!assignvariableop_3_conv2d_42_bias:@6
"assignvariableop_4_dense_51_kernel:
АИ .
 assignvariableop_5_dense_51_bias: 4
"assignvariableop_6_dense_52_kernel: .
 assignvariableop_7_dense_52_bias:&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: E
+assignvariableop_10_adam_m_conv2d_41_kernel: E
+assignvariableop_11_adam_v_conv2d_41_kernel: 7
)assignvariableop_12_adam_m_conv2d_41_bias: 7
)assignvariableop_13_adam_v_conv2d_41_bias: E
+assignvariableop_14_adam_m_conv2d_42_kernel: @E
+assignvariableop_15_adam_v_conv2d_42_kernel: @7
)assignvariableop_16_adam_m_conv2d_42_bias:@7
)assignvariableop_17_adam_v_conv2d_42_bias:@>
*assignvariableop_18_adam_m_dense_51_kernel:
АИ >
*assignvariableop_19_adam_v_dense_51_kernel:
АИ 6
(assignvariableop_20_adam_m_dense_51_bias: 6
(assignvariableop_21_adam_v_dense_51_bias: <
*assignvariableop_22_adam_m_dense_52_kernel: <
*assignvariableop_23_adam_v_dense_52_kernel: 6
(assignvariableop_24_adam_m_dense_52_bias:6
(assignvariableop_25_adam_v_dense_52_bias:%
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 
identity_31ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ї
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*б
value„B‘B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЃ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ї
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Р
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_41_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_41_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_42_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_42_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_51_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_51_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_52_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_52_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:≥
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_10AssignVariableOp+assignvariableop_10_adam_m_conv2d_41_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_11AssignVariableOp+assignvariableop_11_adam_v_conv2d_41_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_12AssignVariableOp)assignvariableop_12_adam_m_conv2d_41_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_v_conv2d_41_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_m_conv2d_42_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_v_conv2d_42_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_m_conv2d_42_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_v_conv2d_42_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_m_dense_51_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_v_dense_51_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_m_dense_51_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_v_dense_51_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_m_dense_52_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_v_dense_52_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_m_dense_52_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_v_dense_52_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 г
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: ђ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_31Identity_31:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:40
.
_user_specified_nameAdam/v/dense_52/bias:40
.
_user_specified_nameAdam/m/dense_52/bias:62
0
_user_specified_nameAdam/v/dense_52/kernel:62
0
_user_specified_nameAdam/m/dense_52/kernel:40
.
_user_specified_nameAdam/v/dense_51/bias:40
.
_user_specified_nameAdam/m/dense_51/bias:62
0
_user_specified_nameAdam/v/dense_51/kernel:62
0
_user_specified_nameAdam/m/dense_51/kernel:51
/
_user_specified_nameAdam/v/conv2d_42/bias:51
/
_user_specified_nameAdam/m/conv2d_42/bias:73
1
_user_specified_nameAdam/v/conv2d_42/kernel:73
1
_user_specified_nameAdam/m/conv2d_42/kernel:51
/
_user_specified_nameAdam/v/conv2d_41/bias:51
/
_user_specified_nameAdam/m/conv2d_41/bias:73
1
_user_specified_nameAdam/v/conv2d_41/kernel:73
1
_user_specified_nameAdam/m/conv2d_41/kernel:-
)
'
_user_specified_namelearning_rate:)	%
#
_user_specified_name	iteration:-)
'
_user_specified_namedense_52/bias:/+
)
_user_specified_namedense_52/kernel:-)
'
_user_specified_namedense_51/bias:/+
)
_user_specified_namedense_51/kernel:.*
(
_user_specified_nameconv2d_42/bias:0,
*
_user_specified_nameconv2d_42/kernel:.*
(
_user_specified_nameconv2d_41/bias:0,
*
_user_specified_nameconv2d_41/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
щ
d
F__inference_dropout_31_layer_call_and_return_conditional_losses_216894

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€$$@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€$$@:W S
/
_output_shapes
:€€€€€€€€€$$@
 
_user_specified_nameinputs
щ
d
F__inference_dropout_31_layer_call_and_return_conditional_losses_216623

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€$$@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€$$@:W S
/
_output_shapes
:€€€€€€€€€$$@
 
_user_specified_nameinputs
“

e
F__inference_dropout_30_layer_call_and_return_conditional_losses_216832

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕФ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:€€€€€€€€€KK "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€KK :W S
/
_output_shapes
:€€€€€€€€€KK 
 
_user_specified_nameinputs
“

e
F__inference_dropout_31_layer_call_and_return_conditional_losses_216543

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕФ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:€€€€€€€€€$$@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€$$@:W S
/
_output_shapes
:€€€€€€€€€$$@
 
_user_specified_nameinputs
•
Ў
.__inference_sequential_20_layer_call_fn_216685
conv2d_41_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
АИ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identityИҐStatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallconv2d_41_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_20_layer_call_and_return_conditional_losses_216643o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€ЦЦ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name216681:&"
 
_user_specified_name216679:&"
 
_user_specified_name216677:&"
 
_user_specified_name216675:&"
 
_user_specified_name216673:&"
 
_user_specified_name216671:&"
 
_user_specified_name216669:&"
 
_user_specified_name216667:b ^
1
_output_shapes
:€€€€€€€€€ЦЦ
)
_user_specified_nameconv2d_41_input
Ї
M
1__inference_max_pooling2d_40_layer_call_fn_216862

inputs
identityЏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_216477Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
–

х
D__inference_dense_52_layer_call_and_return_conditional_losses_216972

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs"нL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*≈
serving_default±
U
conv2d_41_inputB
!serving_default_conv2d_41_input:0€€€€€€€€€ЦЦ<
dense_520
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Їх
–
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
•
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)_random_generator"
_tf_keras_layer
Ё
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op"
_tf_keras_layer
•
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
•
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses
L_random_generator"
_tf_keras_layer
ї
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias"
_tf_keras_layer
ї
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias"
_tf_keras_layer
X
0
1
02
13
S4
T5
[6
\7"
trackable_list_wrapper
X
0
1
02
13
S4
T5
[6
\7"
trackable_list_wrapper
 "
trackable_list_wrapper
 
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ѕ
btrace_0
ctrace_12Ш
.__inference_sequential_20_layer_call_fn_216664
.__inference_sequential_20_layer_call_fn_216685µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zbtrace_0zctrace_1
Е
dtrace_0
etrace_12ќ
I__inference_sequential_20_layer_call_and_return_conditional_losses_216598
I__inference_sequential_20_layer_call_and_return_conditional_losses_216643µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zdtrace_0zetrace_1
‘B—
!__inference__wrapped_model_216462conv2d_41_input"Ш
С≤Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ь
f
_variables
g_iterations
h_learning_rate
i_index_dict
j
_momentums
k_velocities
l_update_step_xla"
experimentalOptimizer
,
mserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
д
strace_02«
*__inference_conv2d_41_layer_call_fn_216789Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zstrace_0
€
ttrace_02в
E__inference_conv2d_41_layer_call_and_return_conditional_losses_216800Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zttrace_0
*:( 2conv2d_41/kernel
: 2conv2d_41/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
л
ztrace_02ќ
1__inference_max_pooling2d_39_layer_call_fn_216805Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zztrace_0
Ж
{trace_02й
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_216810Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z{trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ѓ
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
Аlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
Ѕ
Бtrace_0
Вtrace_12Ж
+__inference_dropout_30_layer_call_fn_216815
+__inference_dropout_30_layer_call_fn_216820©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zБtrace_0zВtrace_1
ч
Гtrace_0
Дtrace_12Љ
F__inference_dropout_30_layer_call_and_return_conditional_losses_216832
F__inference_dropout_30_layer_call_and_return_conditional_losses_216837©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zГtrace_0zДtrace_1
"
_generic_user_object
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
ж
Кtrace_02«
*__inference_conv2d_42_layer_call_fn_216846Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zКtrace_0
Б
Лtrace_02в
E__inference_conv2d_42_layer_call_and_return_conditional_losses_216857Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЛtrace_0
*:( @2conv2d_42/kernel
:@2conv2d_42/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
н
Сtrace_02ќ
1__inference_max_pooling2d_40_layer_call_fn_216862Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zСtrace_0
И
Тtrace_02й
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_216867Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zТtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
Ѕ
Шtrace_0
Щtrace_12Ж
+__inference_dropout_31_layer_call_fn_216872
+__inference_dropout_31_layer_call_fn_216877©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zШtrace_0zЩtrace_1
ч
Ъtrace_0
Ыtrace_12Љ
F__inference_dropout_31_layer_call_and_return_conditional_losses_216889
F__inference_dropout_31_layer_call_and_return_conditional_losses_216894©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЪtrace_0zЫtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
†layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
з
°trace_02»
+__inference_flatten_18_layer_call_fn_216899Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z°trace_0
В
Ґtrace_02г
F__inference_flatten_18_layer_call_and_return_conditional_losses_216905Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zҐtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
Ѕ
®trace_0
©trace_12Ж
+__inference_dropout_32_layer_call_fn_216910
+__inference_dropout_32_layer_call_fn_216915©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z®trace_0z©trace_1
ч
™trace_0
Ђtrace_12Љ
F__inference_dropout_32_layer_call_and_return_conditional_losses_216927
F__inference_dropout_32_layer_call_and_return_conditional_losses_216932©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z™trace_0zЂtrace_1
"
_generic_user_object
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ђnon_trainable_variables
≠layers
Ѓmetrics
 ѓlayer_regularization_losses
∞layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
е
±trace_02∆
)__inference_dense_51_layer_call_fn_216941Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z±trace_0
А
≤trace_02б
D__inference_dense_51_layer_call_and_return_conditional_losses_216952Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≤trace_0
#:!
АИ 2dense_51/kernel
: 2dense_51/bias
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
≥non_trainable_variables
іlayers
µmetrics
 ґlayer_regularization_losses
Јlayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
е
Єtrace_02∆
)__inference_dense_52_layer_call_fn_216961Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄtrace_0
А
єtrace_02б
D__inference_dense_52_layer_call_and_return_conditional_losses_216972Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zєtrace_0
!: 2dense_52/kernel
:2dense_52/bias
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
0
Ї0
ї1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
.__inference_sequential_20_layer_call_fn_216664conv2d_41_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
.__inference_sequential_20_layer_call_fn_216685conv2d_41_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
РBН
I__inference_sequential_20_layer_call_and_return_conditional_losses_216598conv2d_41_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
РBН
I__inference_sequential_20_layer_call_and_return_conditional_losses_216643conv2d_41_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ѓ
g0
Љ1
љ2
Њ3
њ4
ј5
Ѕ6
¬7
√8
ƒ9
≈10
∆11
«12
»13
…14
 15
Ћ16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
`
Љ0
Њ1
ј2
¬3
ƒ4
∆5
»6
 7"
trackable_list_wrapper
`
љ0
њ1
Ѕ2
√3
≈4
«5
…6
Ћ7"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
аBЁ
$__inference_signature_wrapper_216780conv2d_41_input"°
Ъ≤Ц
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 $

kwonlyargsЪ
jconv2d_41_input
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
‘B—
*__inference_conv2d_41_layer_call_fn_216789inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_conv2d_41_layer_call_and_return_conditional_losses_216800inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
1__inference_max_pooling2d_39_layer_call_fn_216805inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_216810inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
бBё
+__inference_dropout_30_layer_call_fn_216815inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
бBё
+__inference_dropout_30_layer_call_fn_216820inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_30_layer_call_and_return_conditional_losses_216832inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_30_layer_call_and_return_conditional_losses_216837inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
‘B—
*__inference_conv2d_42_layer_call_fn_216846inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_conv2d_42_layer_call_and_return_conditional_losses_216857inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
1__inference_max_pooling2d_40_layer_call_fn_216862inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_216867inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
бBё
+__inference_dropout_31_layer_call_fn_216872inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
бBё
+__inference_dropout_31_layer_call_fn_216877inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_31_layer_call_and_return_conditional_losses_216889inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_31_layer_call_and_return_conditional_losses_216894inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
’B“
+__inference_flatten_18_layer_call_fn_216899inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
F__inference_flatten_18_layer_call_and_return_conditional_losses_216905inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
бBё
+__inference_dropout_32_layer_call_fn_216910inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
бBё
+__inference_dropout_32_layer_call_fn_216915inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_32_layer_call_and_return_conditional_losses_216927inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_32_layer_call_and_return_conditional_losses_216932inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_51_layer_call_fn_216941inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_51_layer_call_and_return_conditional_losses_216952inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_52_layer_call_fn_216961inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_52_layer_call_and_return_conditional_losses_216972inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
ћ	variables
Ќ	keras_api

ќtotal

ѕcount"
_tf_keras_metric
c
–	variables
—	keras_api

“total

”count
‘
_fn_kwargs"
_tf_keras_metric
/:- 2Adam/m/conv2d_41/kernel
/:- 2Adam/v/conv2d_41/kernel
!: 2Adam/m/conv2d_41/bias
!: 2Adam/v/conv2d_41/bias
/:- @2Adam/m/conv2d_42/kernel
/:- @2Adam/v/conv2d_42/kernel
!:@2Adam/m/conv2d_42/bias
!:@2Adam/v/conv2d_42/bias
(:&
АИ 2Adam/m/dense_51/kernel
(:&
АИ 2Adam/v/dense_51/kernel
 : 2Adam/m/dense_51/bias
 : 2Adam/v/dense_51/bias
&:$ 2Adam/m/dense_52/kernel
&:$ 2Adam/v/dense_52/kernel
 :2Adam/m/dense_52/bias
 :2Adam/v/dense_52/bias
0
ќ0
ѕ1"
trackable_list_wrapper
.
ћ	variables"
_generic_user_object
:  (2total
:  (2count
0
“0
”1"
trackable_list_wrapper
.
–	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper©
!__inference__wrapped_model_216462Г01ST[\BҐ?
8Ґ5
3К0
conv2d_41_input€€€€€€€€€ЦЦ
™ "3™0
.
dense_52"К
dense_52€€€€€€€€€ј
E__inference_conv2d_41_layer_call_and_return_conditional_losses_216800w9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€ЦЦ
™ "6Ґ3
,К)
tensor_0€€€€€€€€€ЦЦ 
Ъ Ъ
*__inference_conv2d_41_layer_call_fn_216789l9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€ЦЦ
™ "+К(
unknown€€€€€€€€€ЦЦ Љ
E__inference_conv2d_42_layer_call_and_return_conditional_losses_216857s017Ґ4
-Ґ*
(К%
inputs€€€€€€€€€KK 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€II@
Ъ Ц
*__inference_conv2d_42_layer_call_fn_216846h017Ґ4
-Ґ*
(К%
inputs€€€€€€€€€KK 
™ ")К&
unknown€€€€€€€€€II@≠
D__inference_dense_51_layer_call_and_return_conditional_losses_216952eST1Ґ.
'Ґ$
"К
inputs€€€€€€€€€АИ
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ З
)__inference_dense_51_layer_call_fn_216941ZST1Ґ.
'Ґ$
"К
inputs€€€€€€€€€АИ
™ "!К
unknown€€€€€€€€€ Ђ
D__inference_dense_52_layer_call_and_return_conditional_losses_216972c[\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Е
)__inference_dense_52_layer_call_fn_216961X[\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "!К
unknown€€€€€€€€€љ
F__inference_dropout_30_layer_call_and_return_conditional_losses_216832s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€KK 
p
™ "4Ґ1
*К'
tensor_0€€€€€€€€€KK 
Ъ љ
F__inference_dropout_30_layer_call_and_return_conditional_losses_216837s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€KK 
p 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€KK 
Ъ Ч
+__inference_dropout_30_layer_call_fn_216815h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€KK 
p
™ ")К&
unknown€€€€€€€€€KK Ч
+__inference_dropout_30_layer_call_fn_216820h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€KK 
p 
™ ")К&
unknown€€€€€€€€€KK љ
F__inference_dropout_31_layer_call_and_return_conditional_losses_216889s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€$$@
p
™ "4Ґ1
*К'
tensor_0€€€€€€€€€$$@
Ъ љ
F__inference_dropout_31_layer_call_and_return_conditional_losses_216894s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€$$@
p 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€$$@
Ъ Ч
+__inference_dropout_31_layer_call_fn_216872h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€$$@
p
™ ")К&
unknown€€€€€€€€€$$@Ч
+__inference_dropout_31_layer_call_fn_216877h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€$$@
p 
™ ")К&
unknown€€€€€€€€€$$@±
F__inference_dropout_32_layer_call_and_return_conditional_losses_216927g5Ґ2
+Ґ(
"К
inputs€€€€€€€€€АИ
p
™ ".Ґ+
$К!
tensor_0€€€€€€€€€АИ
Ъ ±
F__inference_dropout_32_layer_call_and_return_conditional_losses_216932g5Ґ2
+Ґ(
"К
inputs€€€€€€€€€АИ
p 
™ ".Ґ+
$К!
tensor_0€€€€€€€€€АИ
Ъ Л
+__inference_dropout_32_layer_call_fn_216910\5Ґ2
+Ґ(
"К
inputs€€€€€€€€€АИ
p
™ "#К 
unknown€€€€€€€€€АИЛ
+__inference_dropout_32_layer_call_fn_216915\5Ґ2
+Ґ(
"К
inputs€€€€€€€€€АИ
p 
™ "#К 
unknown€€€€€€€€€АИ≥
F__inference_flatten_18_layer_call_and_return_conditional_losses_216905i7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€$$@
™ ".Ґ+
$К!
tensor_0€€€€€€€€€АИ
Ъ Н
+__inference_flatten_18_layer_call_fn_216899^7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€$$@
™ "#К 
unknown€€€€€€€€€АИц
L__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_216810•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ –
1__inference_max_pooling2d_39_layer_call_fn_216805ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ц
L__inference_max_pooling2d_40_layer_call_and_return_conditional_losses_216867•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ –
1__inference_max_pooling2d_40_layer_call_fn_216862ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€“
I__inference_sequential_20_layer_call_and_return_conditional_losses_216598Д01ST[\JҐG
@Ґ=
3К0
conv2d_41_input€€€€€€€€€ЦЦ
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ “
I__inference_sequential_20_layer_call_and_return_conditional_losses_216643Д01ST[\JҐG
@Ґ=
3К0
conv2d_41_input€€€€€€€€€ЦЦ
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ђ
.__inference_sequential_20_layer_call_fn_216664y01ST[\JҐG
@Ґ=
3К0
conv2d_41_input€€€€€€€€€ЦЦ
p

 
™ "!К
unknown€€€€€€€€€Ђ
.__inference_sequential_20_layer_call_fn_216685y01ST[\JҐG
@Ґ=
3К0
conv2d_41_input€€€€€€€€€ЦЦ
p 

 
™ "!К
unknown€€€€€€€€€њ
$__inference_signature_wrapper_216780Ц01ST[\UҐR
Ґ 
K™H
F
conv2d_41_input3К0
conv2d_41_input€€€€€€€€€ЦЦ"3™0
.
dense_52"К
dense_52€€€€€€€€€