?	?O??4:@?O??4:@!?O??4:@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?O??4:@I?Q18@1V???n???A???J????IN%@???*	?Q??W@2U
Iterator::Model::ParallelMapV2???y0??!\??.lA@)???y0??1\??.lA@:Preprocessing2F
Iterator::Model?4-?2??!?L}<??K@)$?jf-??1??@?&5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatK̳?V|??!????d?4@)x?a????1u??ŏ?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??fG????!?L1䃒.@)1??c?g~?1??w?? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???*?w{?!΅soX@)???*?w{?1΅soX@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip-?"?J ??!O???RF@)h?,{x?14e??n@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor(?8'0m?!?????@)(?8'0m?1?????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??_?????!?6~??1@)0?a?[>b?1-?,?nF@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIg%yX@Q?^?? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	I?Q18@I?Q18@!I?Q18@      ??!       "	V???n???V???n???!V???n???*      ??!       2	???J???????J????!???J????:	N%@???N%@???!N%@???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qg%yX@y?^?? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???q??!???q??"=
sequential_226/dense_678/MatMulMatMul;[?I ??!???O?:??0"=
 sequential_226/dense_680/SoftmaxSoftmaxF??݂ȝ?!???}K??"=
sequential_226/dense_679/MatMulMatMul???@??!?F>?U???0"-
IteratorGetNext/_2_Recv?wQK!??!p?NBj???"K
-gradient_tape/sequential_226/dense_679/MatMulMatMul?ʋ<??!!X?M??0"K
-gradient_tape/sequential_226/dense_678/MatMulMatMul????????!a??Z????0"=
sequential_226/dense_680/MatMulMatMul???Ly??!<???IC??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamhY?ь???!???|????"K
/gradient_tape/sequential_226/dense_680/MatMul_1MatMulhY?ь???!hD?I??Q      Y@Y[ZZZZZ6@ajiiiiiS@q????Y?Q@y˦+??T??"?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?71.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 