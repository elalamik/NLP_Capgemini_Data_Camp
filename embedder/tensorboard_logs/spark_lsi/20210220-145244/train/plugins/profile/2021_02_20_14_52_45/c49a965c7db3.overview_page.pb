?	ddY0?@@ddY0?@@!ddY0?@@	?a????a???!?a???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6ddY0?@@???1ʻ>@1T??~???Ad???^D??I?@?Ρ?@Y??;ź?*	??(\??]@2U
Iterator::Model::ParallelMapV2('?UH???!????Q?=@)('?UH???1????Q?=@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?b?????!Hۛ?A?=@)UN{JΉ??1??qO8@:Preprocessing2F
Iterator::Model҉Sͬ??!\$Y?kH@)T?T?	g??1&???^B3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??????!z??b?|@)??????1z??b?|@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip+?WY???!??ۦ'?I@)G6u~?1?????@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?ԱJ陎?!?z???.)@)??2?}?1P?K?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorzލ?Ay?!???@)zލ?Ay?1???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????9???!???9??.@)!???'*k?1Y????Z@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?a???IT????XX@Q??^+?h@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???1ʻ>@???1ʻ>@!???1ʻ>@      ??!       "	T??~???T??~???!T??~???*      ??!       2	d???^D??d???^D??!d???^D??:	?@?Ρ?@?@?Ρ?@!?@?Ρ?@B      ??!       J	??;ź???;ź?!??;ź?R      ??!       Z	??;ź???;ź?!??;ź?b      ??!       JGPUY?a???b qT????XX@y??^+?h@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits.U??}??!.U??}??"<
sequential_63/dense_189/MatMulMatMul?????š?!?Q(@????0"-
IteratorGetNext/_1_Send???????!??K?"???"<
sequential_63/dense_190/MatMulMatMuly?#????!˂??R=??0"<
sequential_63/dense_191/SoftmaxSoftmax?.c?~??!?Ha*???"J
,gradient_tape/sequential_63/dense_190/MatMulMatMuld?w6?t??!5????0"<
sequential_63/dense_191/MatMulMatMul1<????!?????0"J
,gradient_tape/sequential_63/dense_189/MatMulMatMul?>FZ[??!?DH????0"J
.gradient_tape/sequential_63/dense_190/MatMul_1MatMulE`P3?v??!??⠍??"J
.gradient_tape/sequential_63/dense_191/MatMul_1MatMul?F??s\??!/?a>q??Q      Y@Y??(??(.@a?뺮?:U@q19/?O@yi~?e?E??"?
both?Your program is POTENTIALLY input-bound because 90.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?63.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 