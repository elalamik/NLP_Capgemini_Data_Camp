?	K???J?E@K???J?E@!K???J?E@	?7?H|\???7?H|\??!?7?H|\??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6K???J?E@B?V?9?D@1?ۄ{e???A䃞ͪϭ?I????????YY???j??*	?????ya@2U
Iterator::Model::ParallelMapV2E?a????!i??+N#A@)E?a????1i??+N#A@:Preprocessing2F
Iterator::Model?;??.??!m?׺w?J@)?Դ?i???1?SP3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??j??ǜ?!???fK4@)&?L1A??1Awh;<>0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate>???V??!?v@M0@)~6rݔ???1?{%??"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???_w???!|X????@)???_w???1|X????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?> ?M???!?%(E?4G@)5@i?QH??1?4cz?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor2?w?v?!?;?Yy?@)2?w?v?1?;?Yy?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??a0???!/?آ&?3@)s?<G??t?1G,?4?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?7?H|\??IG??ËX@Q6???x??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	B?V?9?D@B?V?9?D@!B?V?9?D@      ??!       "	?ۄ{e????ۄ{e???!?ۄ{e???*      ??!       2	䃞ͪϭ?䃞ͪϭ?!䃞ͪϭ?:	????????????????!????????B      ??!       J	Y???j??Y???j??!Y???j??R      ??!       Z	Y???j??Y???j??!Y???j??b      ??!       JGPUY?7?H|\??b qG??ËX@y6???x???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsꓖ@????!ꓖ@????"<
sequential_79/dense_237/MatMulMatMulFLh7??!s?XA?d??0"<
sequential_79/dense_239/SoftmaxSoftmax???:Ǖ?!?S뙆??"J
,gradient_tape/sequential_79/dense_237/MatMulMatMul????s??!?1
9???0"J
.gradient_tape/sequential_79/dense_239/MatMul_1MatMul??
?$C??!ު?????"J
.gradient_tape/sequential_79/dense_238/MatMul_1MatMul??NZ=???!Y?'/?k??"<
sequential_79/dense_238/MatMulMatMul@???o??!?"W??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?'??@??!H8?M)A??"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam?K???y??!??J?????"J
,gradient_tape/sequential_79/dense_238/MatMulMatMul?Tnb??!M5?????0Q      Y@Y??(??(.@a?뺮?:U@q?3?LJP@y??K??2??"?
both?Your program is POTENTIALLY input-bound because 93.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?65.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 