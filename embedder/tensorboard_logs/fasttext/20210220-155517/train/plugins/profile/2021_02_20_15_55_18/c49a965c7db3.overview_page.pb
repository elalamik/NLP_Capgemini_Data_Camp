?	?B?5v??@?B?5v??@!?B?5v??@	?@F?-???@F?-??!?@F?-??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?B?5v??@O$?jf?=@1ddY0???A/l?V^???I?9? ???Y|?????*	奛? ?Z@2F
Iterator::ModelE/?Xni??!?*z?F?O@)!???3ڢ?1,W2??>A@:Preprocessing2U
Iterator::Model::ParallelMapV2?`S?Q???!???V?8=@)?`S?Q???1???V?8=@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeataO;?5Y??!ؠ??,?1@)?qs*??1M?6Gt-@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??<??z?!???m-?@)??<??z?1???m-?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateN^????!??W??t'@)?b?=yx?1X??4jc@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip]QJVգ?!Յf?$B@)????[s?1VUUUU?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??QF\ j?!?y?h5?@)??QF\ j?1?y?h5?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap5?+-#???!?g?M?Q,@)??6?4De?1w~?Ut@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?@F?-??I?????X@Q?α0U??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	O$?jf?=@O$?jf?=@!O$?jf?=@      ??!       "	ddY0???ddY0???!ddY0???*      ??!       2	/l?V^???/l?V^???!/l?V^???:	?9? ????9? ???!?9? ???B      ??!       J	|?????|?????!|?????R      ??!       Z	|?????|?????!|?????b      ??!       JGPUY?@F?-??b q?????X@y?α0U???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?Y???P??!?Y???P??"=
 sequential_265/dense_797/SoftmaxSoftmax?
pb[H??!?4?T???"=
sequential_265/dense_795/MatMulMatMulb??t???!9D?0ܿ??0"K
/gradient_tape/sequential_265/dense_797/MatMul_1MatMul??[8??!?0?????"K
-gradient_tape/sequential_265/dense_795/MatMulMatMul??	???!R??G `??0"=
sequential_265/dense_796/MatMulMatMul??	???!??ذ???0"K
/gradient_tape/sequential_265/dense_796/MatMul_1MatMul??n?Nؔ?!??'?5???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam???????!sEV4#<??"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam~5b??ې?!?h?\?I??"K
-gradient_tape/sequential_265/dense_797/MatMulMatMul[?m???!??7?U??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q8??E?1N@y h?????"?
both?Your program is POTENTIALLY input-bound because 93.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?60.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 