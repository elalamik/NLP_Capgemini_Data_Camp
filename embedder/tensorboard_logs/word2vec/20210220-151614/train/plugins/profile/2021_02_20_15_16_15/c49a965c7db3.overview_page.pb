?	??-?+B@??-?+B@!??-?+B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??-?+B@??????@@1?.Ȗ???A?`?????Id?=	l?@*	?l???9\@2U
Iterator::Model::ParallelMapV2K??z2???!???Tg=@)K??z2???1???Tg=@:Preprocessing2F
Iterator::Model??`U???!?????H@)?+??E|??1?R	0sP4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat2Ƈ?˖?!q?Xٷ3@)?.??"j??1b?{?1?/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?K?K?1??!U?i?y/@)?K?K?1??1U?i?y/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate. ?ҥ??!7]?5<6@)?ю~7}?13F??E@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipvnڌ???!Z?$I@)='?o|?y?1?E*	>m@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorZ?Pۆq?!??жR@)Z?Pۆq?1??жR@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?`?unڜ?!?,?7?8@)}?E?j?1Ax^?6@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI???:?X@Q?I?>O???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??????@@??????@@!??????@@      ??!       "	?.Ȗ????.Ȗ???!?.Ȗ???*      ??!       2	?`??????`?????!?`?????:	d?=	l?@d?=	l?@!d?=	l?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q???:?X@y?I?>O????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits:+?a:]??!:+?a:]??"=
sequential_145/dense_435/MatMulMatMul0??๞??!??mt???0"=
 sequential_145/dense_437/SoftmaxSoftmaxT܀q?)??!?A?????"K
-gradient_tape/sequential_145/dense_435/MatMulMatMul87??ї?!?????D??0"K
/gradient_tape/sequential_145/dense_437/MatMul_1MatMulPIw?`.??![լ???"K
/gradient_tape/sequential_145/dense_436/MatMul_1MatMul?"-E?T??!C??y????"=
sequential_145/dense_436/MatMulMatMul??l^????!???/?G??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamZn??????!iĳ.???"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam?T?S@??!?Y?3a???"K
-gradient_tape/sequential_145/dense_436/MatMulMatMul3js`????!V??	]???0Q      Y@Y[ZZZZZ6@ajiiiiiS@ql?SEnQ@y? ????"?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?69.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 