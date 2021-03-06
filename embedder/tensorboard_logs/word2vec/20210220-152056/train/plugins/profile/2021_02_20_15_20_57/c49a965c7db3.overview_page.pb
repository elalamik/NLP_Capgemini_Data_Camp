?	?f$<@?f$<@!?f$<@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?f$<@???Z*:@1?t?_?J??Au???mn??I?'???	??*	rh??|?\@2F
Iterator::Model8?0???!ȓf??oK@)jin????1 UM?P@@:Preprocessing2U
Iterator::Model::ParallelMapV2
?Ƿw??!R}2?>6@)
?Ƿw??1R}2?>6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat}(F??!nE?$?3@)??>rk??1:?x?t/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateb??U???!'????t2@)??Z(???1*??lk(@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?N??C}?!G?Ryy?@)?N??C}?1G?Ryy?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??)X?l??!7l?}o?F@)??Hh˹t?1+?ã??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor]???n?!??YAKT
@)]???n?1??YAKT
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapa??+e??!???m@?5@)??7h?>n?1r&W?\?	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI7Z~X@Q????? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???Z*:@???Z*:@!???Z*:@      ??!       "	?t?_?J???t?_?J??!?t?_?J??*      ??!       2	u???mn??u???mn??!u???mn??:	?'???	???'???	??!?'???	??B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q7Z~X@y????? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????Δ??!????Δ??"=
sequential_155/dense_465/MatMulMatMul??????!???????0"-
IteratorGetNext/_2_Recv???f?]??!??<K???"=
 sequential_155/dense_465/BiasAddBiasAddˀ?C???!?qz?3???"=
sequential_155/dense_466/MatMulMatMulgV?W\??!?F?d????0"=
 sequential_155/dense_467/SoftmaxSoftmax?DW~Uܛ?!??ټ~c??"K
-gradient_tape/sequential_155/dense_466/MatMulMatMuly?݄?k??!G?'?;???0"K
-gradient_tape/sequential_155/dense_465/MatMulMatMul0??l??!?'XOrJ??0"=
sequential_155/dense_467/MatMulMatMul0??l??!-??????0"K
/gradient_tape/sequential_155/dense_467/MatMul_1MatMul????????!?·?	??Q      Y@Y[ZZZZZ6@ajiiiiiS@qL]]	JiP@yzjp???"?
both?Your program is POTENTIALLY input-bound because 93.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?65.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 