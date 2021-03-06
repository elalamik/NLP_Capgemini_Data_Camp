?	,??5C@,??5C@!,??5C@	?{?n?n???{?n?n??!?{?n?n??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6,??5C@?c?=	?A@1???i??A%xC8??IP?i4y@YkE???&??*	Y9??v~b@2U
Iterator::Model::ParallelMapV2d:tzލ??!W/n??C@)d:tzލ??1W/n??C@:Preprocessing2F
Iterator::Model?[Y??̶?!?	iN@)}>ʈ??1??5?b.5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?o{??v??!??????.@)(???֓?1??he/0*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????Ҙ?!hvU?eb0@)?V^?????1?۝?v"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceKi????!b"???@)Ki????1b"???@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip|??&??!J?????C@)?x[???x?1?v?g@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?K????!?-?L74@)X˝?`8w?1m??7?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorڍ>?m?!?om?%@)ڍ>?m?1?om?%@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?{?n?n??Ip?ߍ2qX@Q?@:????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?c?=	?A@?c?=	?A@!?c?=	?A@      ??!       "	???i?????i??!???i??*      ??!       2	%xC8??%xC8??!%xC8??:	P?i4y@P?i4y@!P?i4y@B      ??!       J	kE???&??kE???&??!kE???&??R      ??!       Z	kE???&??kE???&??!kE???&??b      ??!       JGPUY?{?n?n??b qp?ߍ2qX@y?@:?????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits2??????!2??????"=
sequential_133/dense_399/MatMulMatMul?ţ?1??!5S0j7F??0"=
 sequential_133/dense_401/SoftmaxSoftmax??@????!?f?????"=
sequential_133/dense_400/MatMulMatMul?W?????!?1,݅???0"K
-gradient_tape/sequential_133/dense_399/MatMulMatMul??m#3
??!??A????0"K
-gradient_tape/sequential_133/dense_400/MatMulMatMul?ܚ????!J?z?Uu??0"K
/gradient_tape/sequential_133/dense_401/MatMul_1MatMuli?Z~??!?x?4;}??"=
sequential_133/dense_401/MatMulMatMulѨӬ~??!h??_???0"K
/gradient_tape/sequential_133/dense_400/MatMul_1MatMul?????Z??!&?\W???"K
-gradient_tape/sequential_133/dense_401/MatMulMatMul?*?JS͊?!|???\V??0Q      Y@Y??(??(.@a?뺮?:U@q?E???P@y?#??????"?
both?Your program is POTENTIALLY input-bound because 91.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?67.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 