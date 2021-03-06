?	?ׁsF?8@?ׁsF?8@!?ׁsF?8@	?]	(?????]	(????!?]	(????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?ׁsF?8@z???6@1??);????A?s
򳑫?I?=?>t??Y?ĬC9??*	????3Z@2U
Iterator::Model::ParallelMapV2????V??!?p???q>@)????V??1?p???q>@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??
??X??!??s\k)@@) }??Aќ?1<er9??:@:Preprocessing2F
Iterator::Model?-?????!?Px?F@)??z0)??1B$S?,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatev??2SZ??!?1??Y6-@).u?׃I??1[1` @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?9??!|?!F???5@)?9??!|?1F???5@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??6?w?!0?????@)??6?w?10?????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipӼ?ɭ?!?????K@)mU?Yv?1d??mq?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap	3m??J??!!:?I??1@)q??0?l?1?
Q|?
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?]	(????I?????aX@Q?~??? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	z???6@z???6@!z???6@      ??!       "	??);??????);????!??);????*      ??!       2	?s
򳑫??s
򳑫?!?s
򳑫?:	?=?>t???=?>t??!?=?>t??B      ??!       J	?ĬC9???ĬC9??!?ĬC9??R      ??!       Z	?ĬC9???ĬC9??!?ĬC9??b      ??!       JGPUY?]	(????b q?????aX@y?~??? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits_b?????!_b?????"=
 sequential_120/dense_362/SoftmaxSoftmax%?a?V
??!??_(Z???"=
sequential_120/dense_360/MatMulMatMul??/?:???!???My??0"K
-gradient_tape/sequential_120/dense_360/MatMulMatMul??k?̉??!7?Y?????0"K
/gradient_tape/sequential_120/dense_362/MatMul_1MatMulj/?P=i??!.?cn~X??"K
/gradient_tape/sequential_120/dense_361/MatMul_1MatMul?~z??7??!?[?????"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam???F9??!%??>????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam????gm??!@?a&??"=
sequential_120/dense_361/MatMulMatMul?????!9?JN?W??0"K
-gradient_tape/sequential_120/dense_362/MatMulMatMul%?a?V
??!{
???h??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?{??s!M@yO????Y??"?
both?Your program is POTENTIALLY input-bound because 92.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?58.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 