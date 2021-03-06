?	m7?7Ms8@m7?7Ms8@!m7?7Ms8@	?%e?!????%e?!???!?%e?!???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6m7?7Ms8@?T1{6@1P?c*c??A??X?v??I	?3????Y?lɪ7??*	??/ݬR@2U
Iterator::Model::ParallelMapV2?/???"??!ٲ??Q?;@)?/???"??1ٲ??Q?;@:Preprocessing2F
Iterator::ModelNA~6rݤ?!??֥?FK@)?Ry=???1 ???_?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?և?F???!~?4?5@)]??ky???1C??`??1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateq?::?F??!?D-@)ܝ??.4w?1?c?s?U@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??-Yu?!b$????@)??-Yu?1b$????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?vi?a??!,)Z'?F@);?O??nr?16?6??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorYL?Q?i?!4'{ ?@)YL?Q?i?14'{ ?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?R#?3???!i~O??1@)????b?1???"J{@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?%e?!???I?-&?\X@Q????@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?T1{6@?T1{6@!?T1{6@      ??!       "	P?c*c??P?c*c??!P?c*c??*      ??!       2	??X?v????X?v??!??X?v??:		?3????	?3????!	?3????B      ??!       J	?lɪ7???lɪ7??!?lɪ7??R      ??!       Z	?lɪ7???lɪ7??!?lɪ7??b      ??!       JGPUY?%e?!???b q?-&?\X@y????@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsMC?_Pv??!MC?_Pv??"-
IteratorGetNext/_2_Recv?
B񼾭?!?b??r??"<
sequential_43/dense_129/MatMulMatMul?P?ո??!?<?j??0"J
,gradient_tape/sequential_43/dense_129/MatMulMatMulT/^?W??!??v?O??0"<
sequential_43/dense_131/SoftmaxSoftmax?GO?T???!??w??-??"<
sequential_43/dense_130/MatMulMatMul&???:??!?жk7???0"J
,gradient_tape/sequential_43/dense_130/MatMulMatMuls??Ђ??!v?td???0"J
.gradient_tape/sequential_43/dense_131/MatMul_1MatMul?@?>?Q??!z?u8???"<
sequential_43/dense_131/MatMulMatMul?o?h???!????g???0"J
.gradient_tape/sequential_43/dense_130/MatMul_1MatMul*?zO???!?yԵl???Q      Y@Y[ZZZZZ6@ajiiiiiS@q???}??B@yaz??']??"?
both?Your program is POTENTIALLY input-bound because 91.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?37.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 