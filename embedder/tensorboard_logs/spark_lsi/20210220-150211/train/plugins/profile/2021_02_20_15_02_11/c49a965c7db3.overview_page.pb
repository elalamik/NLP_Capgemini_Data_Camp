?	&??+B@&??+B@!&??+B@	1?7SQE??1?7SQE??!1?7SQE??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6&??+B@?K7?AA@1?=?Е??AG??????I?Ϛ???Y???I????*	ˡE???T@2U
Iterator::Model::ParallelMapV2?o	?????!???Z?8?@)?o	?????1???Z?8?@:Preprocessing2F
Iterator::Model??fc%???!?5??XN@)`??'??1}?o??x=@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat\?d8?ϐ?!Z?u???3@)?.m8,??1????:o0@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceͮ{+t?!2?Oy??@)ͮ{+t?12?Oy??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateq?J[\???!pT?M'@)????s?1?rX??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipàL??Š?!m?N?2?C@)2t??r?1??'??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??q?@Hf?!r}??
@)??q?@Hf?1r}??
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??O?s'??!??t?dM,@)}	^a?1N\?H??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no92?7SQE??I敷?szX@Q??L}????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?K7?AA@?K7?AA@!?K7?AA@      ??!       "	?=?Е???=?Е??!?=?Е??*      ??!       2	G??????G??????!G??????:	?Ϛ????Ϛ???!?Ϛ???B      ??!       J	???I???????I????!???I????R      ??!       Z	???I???????I????!???I????b      ??!       JGPUY2?7SQE??b q敷?szX@y??L}?????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???hc??!???hc??"-
IteratorGetNext/_1_Send????Ѭ?!?e?S?K??"<
sequential_91/dense_273/MatMulMatMul????Պ??!t??=??0"<
sequential_91/dense_275/SoftmaxSoftmax?~?P?̝?!_??????"J
,gradient_tape/sequential_91/dense_273/MatMulMatMuli"2?????!????????0"<
sequential_91/dense_274/MatMulMatMul?7??}??!^?'Z???0"J
.gradient_tape/sequential_91/dense_274/MatMul_1MatMul???????!?\xe???"<
sequential_91/dense_275/MatMulMatMulL??b???!#鐯???0"J
,gradient_tape/sequential_91/dense_274/MatMulMatMul?9??D??!???????0"J
.gradient_tape/sequential_91/dense_275/MatMul_1MatMulHə^b???!T???W??Q      Y@Y[ZZZZZ6@ajiiiiiS@qM`??7H@y??}?o???"?
both?Your program is POTENTIALLY input-bound because 94.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?48.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 