?	V}??bS=@V}??bS=@!V}??bS=@	??J?_D????J?_D??!??J?_D??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6V}??bS=@????c?:@1ڍ>???Aur???7??I ???w??Y??- ???*	B`??"3W@2U
Iterator::Model::ParallelMapV2????E??!??=Rt@@)????E??1??=Rt@@:Preprocessing2F
Iterator::Model?H???Ϋ?!?Z??@CM@)??=??W??1?D	 ݝ9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeati?x?Jx??!*2?o3@)?52;???1?\?P@0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateXo?
????!m?N?.a,@)??2R??|?1????*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?vöEy?!X??fY?@)?vöEy?1X??fY?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipu???????!z?P2??D@).?+=)s?1Nٴ??)@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorl??g?i?!(??R6?
@)l??g?i?1(??R6?
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????&??!v?+$8?0@)Ih˹We?1?	$u@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??J?_D??I?8???6X@Q3&??3?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????c?:@????c?:@!????c?:@      ??!       "	ڍ>???ڍ>???!ڍ>???*      ??!       2	ur???7??ur???7??!ur???7??:	 ???w?? ???w??! ???w??B      ??!       J	??- ?????- ???!??- ???R      ??!       Z	??- ?????- ???!??- ???b      ??!       JGPUY??J?_D??b q?8???6X@y3&??3?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsP????d??!P????d??":
sequential_6/dense_18/MatMulMatMul:ΆG?V??!g????0":
sequential_6/dense_20/SoftmaxSoftmax?y??????!S?:?^???"H
,gradient_tape/sequential_6/dense_19/MatMul_1MatMul9?6b ??!zʁ?"???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??QP???!?d?????":
sequential_6/dense_19/MatMulMatMul???sIB??!?g(2??0"H
,gradient_tape/sequential_6/dense_20/MatMul_1MatMul?C???*??!9B??m??"H
*gradient_tape/sequential_6/dense_18/MatMulMatMul=?T79*??!??@????0":
sequential_6/dense_20/MatMulMatMulQ?<?T??!??(;f???0"H
*gradient_tape/sequential_6/dense_19/MatMulMatMul%&?Y:>??!??Xy??0Q      Y@Y??(??(.@a?뺮?:U@q???J?'P@yj??:???"?
both?Your program is POTENTIALLY input-bound because 90.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?64.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 