?	?j?0`C@?j?0`C@!?j?0`C@	??f-?a????f-?a??!??f-?a??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?j?0`C@u?8F?B@1??켍???A撪?&???I??]?9k??Y????}r??*	??K7?AY@2U
Iterator::Model::ParallelMapV2?z0)>>??!??C??@@)?z0)>>??1??C??@@:Preprocessing2F
Iterator::Model??pY???!?`?j?L@) F?6???1?V????7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??g?RD??!xm?iK?5@)?@d?&ޑ?1????E1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???S㥋?!???D??*@)?H?H?}?1{?e?7?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceU1?~?y?!?h!Ԩ?@)U1?~?y?1?h!Ԩ?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?D?4??!??]?vE@)?$?j?t?1??CƧ?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????q?!'???@)?????q?1'???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap2˞6???!S??`?V0@)*?"?h?1=?????@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??f-?a??Iŀm??oX@QjF?	l??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	u?8F?B@u?8F?B@!u?8F?B@      ??!       "	??켍?????켍???!??켍???*      ??!       2	撪?&???撪?&???!撪?&???:	??]?9k????]?9k??!??]?9k??B      ??!       J	????}r??????}r??!????}r??R      ??!       Z	????}r??????}r??!????}r??b      ??!       JGPUY??f-?a??b qŀm??oX@yjF?	l???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits2?Q]}???!2?Q]}???"=
sequential_150/dense_450/MatMulMatMul?z"????!-???????0"=
 sequential_150/dense_452/SoftmaxSoftmax?";P?[??!?`??*???"K
-gradient_tape/sequential_150/dense_450/MatMulMatMul??,??;??!~?-	????0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?t6nj??!??V(???"K
/gradient_tape/sequential_150/dense_451/MatMul_1MatMul?徭????!?[??XW??"=
sequential_150/dense_451/MatMulMatMul????n??!?!?N?B??0"K
/gradient_tape/sequential_150/dense_452/MatMul_1MatMulp? `Rm??!@)??3.??"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam????ч?!? y?????"K
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam??(:ʢ??!?eJ9٩??Q      Y@Y??(??(.@a?뺮?:U@q????ER@y??)?????"?
both?Your program is POTENTIALLY input-bound because 93.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?73.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 