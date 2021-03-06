?	??i??@@??i??@@!??i??@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??i??@@狽_|>@1?`??w}??Aӣ??????I>??I?F@*	W9??v>X@2U
Iterator::Model::ParallelMapV2nm?y?ؠ?!?>????@@)nm?y?ؠ?1?>????@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?=??j???!g0^???3@)Q-"????1rǆͶ80@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatew????@??!??$Bj7@)2????#??1L?۷[/@:Preprocessing2F
Iterator::Model????????!4Y?΅?G@)?L!u??1li@?o?+@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicev5y?j?~?!=?Kۘ?@)v5y?j?~?1=?Kۘ?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip2?	?????!˦?1zJ@)?x??n?u?1?K ?B?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapX<?H?ۚ?!C
???;@)?,{?l?1??a?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??|	l?!?G?&wG@)??|	l?1?G?&wG@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?7.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?:?x?hX@QթX?P?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	狽_|>@狽_|>@!狽_|>@      ??!       "	?`??w}???`??w}??!?`??w}??*      ??!       2	ӣ??????ӣ??????!ӣ??????:	>??I?F@>??I?F@!>??I?F@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?:?x?hX@yթX?P?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??m??Q??!??m??Q??"=
sequential_236/dense_708/MatMulMatMul?J??E???!F??C??0"=
 sequential_236/dense_710/SoftmaxSoftmax?	Q?©??!8;??????"=
sequential_236/dense_709/MatMulMatMul7vE?uO??!??رɂ??0"M
3sequential_236/batch_normalization_116/moments/meanMean"?+?0???!cf>?o???"-
IteratorGetNext/_2_RecvY????e??!??]{%???"K
-gradient_tape/sequential_236/dense_708/MatMulMatMulۧ/?&??!??A&Ձ??0"K
-gradient_tape/sequential_236/dense_709/MatMulMatMul?T?Y???!?۫f???0"=
sequential_236/dense_710/MatMulMatMulM17EJ??!(?.????0"K
/gradient_tape/sequential_236/dense_709/MatMul_1MatMulr%k>5??!??X???Q      Y@Y??(??(.@a?뺮?:U@qC~Ft?xO@y??y[O??"?
both?Your program is POTENTIALLY input-bound because 90.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?7.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?62.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 