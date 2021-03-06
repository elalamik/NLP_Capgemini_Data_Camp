?	?h8e?:@?h8e?:@!?h8e?:@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?h8e?:@+N??8@1?iP4???A??z6???I?o??????*	?/?$VY@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatÃf׽??!??U8?v@@)???G???1?(Ĕ?=@:Preprocessing2U
Iterator::Model::ParallelMapV2?n?e????!?a?7@)?n?e????1?a?7@:Preprocessing2F
Iterator::Model?I?O?c??!6;?]?E@)?$?9ϔ?1???4@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipP?s'???!??G??lL@) ?!p$??1?n??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?{?ԗ?}?!v??zF?@)?{?ԗ?}?1v??zF?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate1?Zd??!???e*@)???d#y?1Dq,?8@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?9??!l?!??dm@)?9??!l?1??dm@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?72?????!<??%0@)???|~h?1{e-1?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIF??1??X@Q?nȇ????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	+N??8@+N??8@!+N??8@      ??!       "	?iP4????iP4???!?iP4???*      ??!       2	??z6?????z6???!??z6???:	?o???????o??????!?o??????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qF??1??X@y?nȇ?????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?M5?R???!?M5?R???"=
 sequential_224/dense_674/SoftmaxSoftmax?)Z֦G??!a??z<???"=
sequential_224/dense_672/MatMulMatMuli???????!??ה???0"=
sequential_224/dense_673/MatMulMatMul})Q??!??,'???0"=
sequential_224/dense_674/MatMulMatMulZ?"??h??!?B?;????0"K
-gradient_tape/sequential_224/dense_673/MatMulMatMul???5???!e1EOn??0"K
/gradient_tape/sequential_224/dense_674/MatMul_1MatMulL??|??!&"A<???"K
-gradient_tape/sequential_224/dense_672/MatMulMatMul?ϝ5?o??! ?{D;???0"K
/gradient_tape/sequential_224/dense_673/MatMul_1MatMul?(??po??!??S28??"b
?sequential_224/dropout_224/dropout/random_uniform/RandomUniformRandomUniform?=M????!M㎈Qt??Q      Y@Y[ZZZZZ6@ajiiiiiS@q?z퀋?Q@y??@???"?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?70.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 