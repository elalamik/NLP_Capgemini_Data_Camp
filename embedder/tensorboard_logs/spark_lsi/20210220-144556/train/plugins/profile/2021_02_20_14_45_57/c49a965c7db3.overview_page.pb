?	?????7@?????7@!?????7@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?????7@[? ?;5@1?ECƣT??A?C?bԥ?IQi??>??*	Zd;?Z@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??????!??ܡXB@)??? ???1@<\?S?@@:Preprocessing2U
Iterator::Model::ParallelMapV2?V*????!ފx?w?8@)?V*????1ފx?w?8@:Preprocessing2F
Iterator::Model?Ր??ҧ?!WᠨMJF@)l??F????1?7ɢ#?3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateb?G,??!?=&UT?'@)a??+ey?1?Η??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???\??x?!Ea~?W@)???\??x?1Ea~?W@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip???????!?_W??K@)??i? ?s?1w?m\?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor7????k?!@68???	@)7????k?1@68???	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??U+??!ێF??#,@)臭???c?1?D??}Y@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?t9 ?iX@Q?k???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	[? ?;5@[? ?;5@![? ?;5@      ??!       "	?ECƣT???ECƣT??!?ECƣT??*      ??!       2	?C?bԥ??C?bԥ?!?C?bԥ?:	Qi??>??Qi??>??!Qi??>??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?t9 ?iX@y?k???@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsH?o??!H?o??"<
sequential_40/dense_120/MatMulMatMul?/?????!???md<??0"<
sequential_40/dense_122/SoftmaxSoftmax?{-????!k{??˙??"<
sequential_40/dense_121/MatMulMatMul-?m?.???!>[r?.h??0"J
,gradient_tape/sequential_40/dense_121/MatMulMatMul?=?????!??10???0"J
.gradient_tape/sequential_40/dense_122/MatMul_1MatMulR#}#Q???!L??CE???"-
IteratorGetNext/_2_Recv	Q?????!??n??"J
.gradient_tape/sequential_40/dense_121/MatMul_1MatMul?	??E??!z?f?ʐ??"J
,gradient_tape/sequential_40/dense_120/MatMulMatMul???Tf6??!E??1??0"<
sequential_40/dense_122/MatMulMatMul?G?}???!?m??Ȓ??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?R?P@y?n???8??"?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?67.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 