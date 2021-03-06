?	??e??
A@??e??
A@!??e??
A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-??e??
A@???q@@1??_=????A?º????I2?CP5z??*	???K7?X@2U
Iterator::Model::ParallelMapV2?ǵ?b???!M?q??_?@)?ǵ?b???1M?q??_?@:Preprocessing2F
Iterator::ModelGW??:??!Ǽp?K@)P??0{ٖ?1B??N??6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?$?9ϔ?!"?",?4@)c?#?w~??1o????\1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceۈ'????!?mэ?w!@)ۈ'????1?mэ?w!@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?u??Xߐ?!????0@)??Y?$??1??>D? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?????%??!8C??U?F@),??ypwv?1?ڻ?PL@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??c${?j?!?=??Q
@)??c${?j?1?=??Q
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapGv?e?ޓ?!??????3@)??(]?g?1?.T?V?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIM7?5?X@Q?,8r?2??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???q@@???q@@!???q@@      ??!       "	??_=??????_=????!??_=????*      ??!       2	?º?????º????!?º????:	2?CP5z??2?CP5z??!2?CP5z??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qM7?5?X@y?,8r?2???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits،??{??!،??{??"=
sequential_154/dense_462/MatMulMatMulk?}P˧?!???57??0"=
 sequential_154/dense_464/SoftmaxSoftmax??޺j???!\`?L??"-
IteratorGetNext/_2_Recv?mi??-??!:?v8)???"=
sequential_154/dense_463/MatMulMatMul	x????!???&???0"=
sequential_154/dense_464/MatMulMatMul#
.?&??!?????	??0"K
-gradient_tape/sequential_154/dense_463/MatMulMatMul?A!??̖?!?%`v??0"K
-gradient_tape/sequential_154/dense_462/MatMulMatMul0???r??!F????0"K
/gradient_tape/sequential_154/dense_464/MatMul_1MatMul0???r??!?p??D??"K
/gradient_tape/sequential_154/dense_463/MatMul_1MatMul2j??'U??!,?!m???Q      Y@Y[ZZZZZ6@ajiiiiiS@qzt?W?Q@y
??????"?
both?Your program is POTENTIALLY input-bound because 93.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?71.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 