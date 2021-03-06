?	(???:@(???:@!(???:@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-(???:@??????7@1Ӥt{???A?O?I?5??IѮB?Oj@*	??n?PV@2U
Iterator::Model::ParallelMapV2g??e???!?l???=@)g??e???1?l???=@:Preprocessing2F
Iterator::Model,???ب?!?Gv??.K@)???%????1?"
???8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??????!?϶z??7@)G:#/k??1??9}?&4@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??~?n??!??jC?*@)?D???Jy?1`???.?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice4????w?!D?%X?@)4????w?1D?%X?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipv?ݑ?ڤ?!O??[?F@)a??>??t?1ָ?8??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensoruۈ'?i?!'????&@)uۈ'?i?1'????&@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap:??H???!?25??E0@)??BBe?1?$Q?'B@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 88.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?9.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI???<ρX@Q7?O?0???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??????7@??????7@!??????7@      ??!       "	Ӥt{???Ӥt{???!Ӥt{???*      ??!       2	?O?I?5???O?I?5??!?O?I?5??:	ѮB?Oj@ѮB?Oj@!ѮB?Oj@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q???<ρX@y7?O?0????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?G??~c??!?G??~c??"<
sequential_56/dense_168/MatMulMatMulT	\???!??je??0"<
sequential_56/dense_170/SoftmaxSoftmax<???D???!փwfw??"<
sequential_56/dense_169/MatMulMatMul?????˜?!???U?C??0"<
sequential_56/dense_170/MatMulMatMul?*?s\??!? ,????0"J
,gradient_tape/sequential_56/dense_169/MatMulMatMul?_>h0l??!???#R???0"J
,gradient_tape/sequential_56/dense_168/MatMulMatMul????i???!?ѩ????0"J
.gradient_tape/sequential_56/dense_170/MatMul_1MatMul_)?	?ܕ?!aFS?\??"J
.gradient_tape/sequential_56/dense_169/MatMul_1MatMul?e???̔?!?z?o????"J
,gradient_tape/sequential_56/dense_170/MatMulMatMull̤͑???!?Ǻ?{???0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?????R@ylx?/A???"?
both?Your program is POTENTIALLY input-bound because 88.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?9.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?75.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 