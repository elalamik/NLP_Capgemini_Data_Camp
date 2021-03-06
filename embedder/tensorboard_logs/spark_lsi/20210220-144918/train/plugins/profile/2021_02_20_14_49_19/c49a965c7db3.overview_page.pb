?	?'???&@@?'???&@@!?'???&@@	????7???????7???!????7???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?'???&@@?AC?'<@1?`TR'???Aɑ???ˢ?I?e6|
@Y?dV?p;??*	̡E???e@2U
Iterator::Model::ParallelMapV2?P?R??!?F[d?vC@)?P?R??1?F[d?vC@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate+O ????!i?;?x9@)NG 7???1???)t5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat"?uq??!v??m	2@)????L0??1???K ?/@:Preprocessing2F
Iterator::Model?71$'??!f!???I@)???y??1?R?h?)@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?> ?M?|?!S?Ƚ.@)?> ?M?|?1S?Ƚ.@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip$(~??k??!???yH@)?????u?1??zJ?i@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?+?POo?!?o?m?@)?+?POo?1?o?m?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?Os?"??!=?[?;@)?0e??f?17??a?I??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 87.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?10.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9????7???Io~?'aX@Q?????@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?AC?'<@?AC?'<@!?AC?'<@      ??!       "	?`TR'????`TR'???!?`TR'???*      ??!       2	ɑ???ˢ?ɑ???ˢ?!ɑ???ˢ?:	?e6|
@?e6|
@!?e6|
@B      ??!       J	?dV?p;???dV?p;??!?dV?p;??R      ??!       Z	?dV?p;???dV?p;??!?dV?p;??b      ??!       JGPUY????7???b qo~?'aX@y?????@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsӻ3v????!ӻ3v????"<
sequential_53/dense_161/SoftmaxSoftmaxײ(?g??!.?X?????"<
sequential_53/dense_159/MatMulMatMul{?{Z?ߕ?!F?????0"J
,gradient_tape/sequential_53/dense_159/MatMulMatMul???/????!<???????0"J
.gradient_tape/sequential_53/dense_160/MatMul_1MatMul???rŎ?!Z}ֻL???"J
.gradient_tape/sequential_53/dense_161/MatMul_1MatMul??]R?f??!b,~?]8??"<
sequential_53/dense_160/MatMulMatMul?K????!?@?$??0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam?ξ{????!?{?Z???"`
=sequential_53/dropout_53/dropout/random_uniform/RandomUniformRandomUniformk?!}???!'?.???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamx???¢??!#?F?Dg??Q      Y@Y??(??(.@a?뺮?:U@qu8??3N@yT=%C???"?
both?Your program is POTENTIALLY input-bound because 87.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?10.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?60.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 