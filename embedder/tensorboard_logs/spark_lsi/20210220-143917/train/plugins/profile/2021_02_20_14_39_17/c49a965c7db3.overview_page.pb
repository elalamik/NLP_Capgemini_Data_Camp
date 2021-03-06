?	?Z??5@?Z??5@!?Z??5@	w?^???w?^???!w?^???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?Z??5@t	4?3@1q:?V??A?{eު???I?e?O7P??YV?a????*	4^?I:]@2U
Iterator::Model::ParallelMapV2?B=}???!?$C?lc<@)?B=}???1?$C?lc<@:Preprocessing2F
Iterator::Modelٱ?????!???.[G@)?ި????1??~?R2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???V???!?kT;~6@)?ΡU1??1mJ?7??1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateU?g$B#??!{???)4@)?)??ŋ?1V>jn3'@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceSͬ????!????] !@)Sͬ????1????] !@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipyGsd???!cel?ѤJ@)wj.7???1????#B@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorǺ???v?!q??r)@)Ǻ???v?1q??r)@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?fh??!?]?ߺ7@)?6?ُq?1??o??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9w?^???I̗#???W@QK???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	t	4?3@t	4?3@!t	4?3@      ??!       "	q:?V??q:?V??!q:?V??*      ??!       2	?{eު????{eު???!?{eު???:	?e?O7P???e?O7P??!?e?O7P??B      ??!       J	V?a????V?a????!V?a????R      ??!       Z	V?a????V?a????!V?a????b      ??!       JGPUYw?^???b q̗#???W@yK???@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?r?????!?r?????":
sequential_9/dense_27/MatMulMatMulu??Q?Y??!)6tS????0":
sequential_9/dense_29/SoftmaxSoftmax?.?,???!?{Y????":
sequential_9/dense_28/MatMulMatMula?|?9y??!QFP?????0":
sequential_9/dense_29/MatMulMatMulx??Q>???!??i????0"H
*gradient_tape/sequential_9/dense_28/MatMulMatMul?7?_????!`?]?j???0"H
*gradient_tape/sequential_9/dense_27/MatMulMatMul?(?z??!N@O5??0"H
,gradient_tape/sequential_9/dense_28/MatMul_1MatMulwX??I??!?ҭ????"H
,gradient_tape/sequential_9/dense_29/MatMul_1MatMul????????!=?>?}???"H
*gradient_tape/sequential_9/dense_29/MatMulMatMul??3gu???!?ԱC???0Q      Y@Y[ZZZZZ6@ajiiiiiS@qfD???A@yy?.???"?
both?Your program is POTENTIALLY input-bound because 90.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?35.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 