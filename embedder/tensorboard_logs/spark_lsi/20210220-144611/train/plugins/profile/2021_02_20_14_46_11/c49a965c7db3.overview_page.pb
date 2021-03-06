?	,???)?=@,???)?=@!,???)?=@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-,???)?=@????;@1?-v??2??Ax????գ?I?S??Y??*	:??v??S@2U
Iterator::Model::ParallelMapV2?z?????!?r8??=@)?z?????1?r8??=@:Preprocessing2F
Iterator::Model%W@????!??Tq?FL@)ĕ?wF[??1v-7?q?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?SW>????!%?E)15@)???B:??1an?
??1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?1???Aw?!?>?3?@)?1???Aw?1?>?3?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate3???Uֆ?!???%K?,@)?-@?jv?1r??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip,????`??!GZ??W?E@)?? v?p?1F?#?Y?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor>+N?f?!~?? c@)>+N?f?1~?? c@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?ډ??H??!????1@)??????a?1??G	p;@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI???D??X@Q??߮???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????;@????;@!????;@      ??!       "	?-v??2???-v??2??!?-v??2??*      ??!       2	x????գ?x????գ?!x????գ?:	?S??Y???S??Y??!?S??Y??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q???D??X@y??߮????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits~ ??(???!~ ??(???"-
IteratorGetNext/_2_Recv? ?f?D??!??`2e???"<
sequential_42/dense_126/MatMulMatMul(?T.?ݧ?!???j???0"<
sequential_42/dense_128/SoftmaxSoftmax?s.?Lf??!4???Ͽ??"J
,gradient_tape/sequential_42/dense_126/MatMulMatMulnח??z??!?r?~???0"<
sequential_42/dense_127/MatMulMatMulU?0~(??!@~?Y??0"J
,gradient_tape/sequential_42/dense_127/MatMulMatMul??x??c??!?2?O???0"J
.gradient_tape/sequential_42/dense_128/MatMul_1MatMul2?rsd֗?!5i??l??"J
.gradient_tape/sequential_42/dense_127/MatMul_1MatMul?p?+͖?!(?#????"<
sequential_42/dense_128/MatMulMatMul???G??!W??I>??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q????DQ@yR?????"?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?69.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 