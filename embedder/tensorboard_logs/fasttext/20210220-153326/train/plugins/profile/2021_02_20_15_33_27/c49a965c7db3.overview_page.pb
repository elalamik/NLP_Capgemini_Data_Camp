?	Eh??8@Eh??8@!Eh??8@	??-진????-진??!??-진??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6Eh??8@?R%???6@1????q??Affffff??I??};???Y@?3iSu??*	??ʡEj`@2U
Iterator::Model::ParallelMapV2?Ԗ:????!Z!??]?:@)?Ԗ:????1Z!??]?:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??Û5x??!?'m?f7@)X?l:???1?j(?* 3@:Preprocessing2F
Iterator::Model?-???1??!?+?i[tF@):???`???1G68YA2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?}V?)??!|$¯5@)??????1?^g??*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceު?PMI??!a?3??? @)ު?PMI??1a?3??? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?wD???!.?t???K@)eQ?E??1y<+?h@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?pY?? w?!???G.@)?pY?? w?1???G.@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapN?a??m??!(?v?8?9@)q:?v?1??Ka??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??-진??I??Z?vbX@Qm?<n ???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?R%???6@?R%???6@!?R%???6@      ??!       "	????q??????q??!????q??*      ??!       2	ffffff??ffffff??!ffffff??:	??};?????};???!??};???B      ??!       J	@?3iSu??@?3iSu??!@?3iSu??R      ??!       Z	@?3iSu??@?3iSu??!@?3iSu??b      ??!       JGPUY??-진??b q??Z?vbX@ym?<n ????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits7&??????!7&??????"=
 sequential_193/dense_581/SoftmaxSoftmax?bz}???!G???????"=
sequential_193/dense_579/MatMulMatMulz?R??!?Jr????0"K
-gradient_tape/sequential_193/dense_579/MatMulMatMul4?U???!?$i??.??0"K
/gradient_tape/sequential_193/dense_581/MatMul_1MatMul?}q?h??!+???T???"K
/gradient_tape/sequential_193/dense_580/MatMul_1MatMulm,g??W??!?h7X????"=
sequential_193/dense_580/MatMulMatMul???????!,???)??0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??},??!'?m?[??"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam????4??!???p_n??"K
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam?#????!??ь??Q      Y@Y[ZZZZZ6@ajiiiiiS@q??^?CJ@y??@?n???"?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?52.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 