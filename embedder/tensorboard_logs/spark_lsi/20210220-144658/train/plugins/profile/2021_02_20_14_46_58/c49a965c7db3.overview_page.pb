?	????ڐ:@????ڐ:@!????ڐ:@	?(s?Q???(s?Q??!?(s?Q??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6????ڐ:@e?I)??8@1З??\4??A??ʡE??I
K<?l
??Y????W??*	,????FT@2F
Iterator::Model؟??N???!*????L@)???}??1J?fP??<@:Preprocessing2U
Iterator::Model::ParallelMapV2?d?F ^??!???"<@)?d?F ^??1???"<@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?%:?,B??!?}m???4@)~?????1Q?K??0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???'??!S??i-@)?v?$z?1Jc?K?y@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicel??+v?!^?4?S?@)l??+v?1^?4?S?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??a?'֡?!??zE@)?8?ߡ(p?17?4?t@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????i?!Yd1???@)?????i?1Yd1???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??5w????!FߧO1@)@?t?_b?1?X???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?(s?Q??I??\?7zX@QS????]??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	e?I)??8@e?I)??8@!e?I)??8@      ??!       "	З??\4??З??\4??!З??\4??*      ??!       2	??ʡE????ʡE??!??ʡE??:	
K<?l
??
K<?l
??!
K<?l
??B      ??!       J	????W??????W??!????W??R      ??!       Z	????W??????W??!????W??b      ??!       JGPUY?(s?Q??b q??\?7zX@yS????]???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????#??!????#??"<
sequential_48/dense_146/SoftmaxSoftmaxZ^D??!E
u??"<
sequential_48/dense_144/MatMulMatMul???f
E??!ɽs?ş??0"J
.gradient_tape/sequential_48/dense_145/MatMul_1MatMulBɍ?-??!-OP????"J
.gradient_tape/sequential_48/dense_146/MatMul_1MatMulBɍ?-??!??,`ye??"J
,gradient_tape/sequential_48/dense_144/MatMulMatMul????\p??!\F)???0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdamn?4?????!????????"<
sequential_48/dense_145/MatMulMatMul?$?@???!??,,??0"`
=sequential_48/dropout_48/dropout/random_uniform/RandomUniformRandomUniform?yx??#??!????`>??"J
,gradient_tape/sequential_48/dense_145/MatMulMatMulV???"??! ???P??0Q      Y@Y[ZZZZZ6@ajiiiiiS@qw???QsP@yE$g??"?
both?Your program is POTENTIALLY input-bound because 93.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?65.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 