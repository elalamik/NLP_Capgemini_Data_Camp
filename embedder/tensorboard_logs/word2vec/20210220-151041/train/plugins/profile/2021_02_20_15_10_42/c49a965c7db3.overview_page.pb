?	??
*??>@??
*??>@!??
*??>@	?vK#???vK#??!?vK#??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??
*??>@?1w-!?;@1?
(????A?N^???I????G??Y?:??K??*	v?V6^@2U
Iterator::Model::ParallelMapV2?C4??ء?!+H;?~?<@)?C4??ء?1+H;?~?<@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?f+/????!?b?ߟ!7@)]??'???1????3@:Preprocessing2F
Iterator::Model??=???!?6b???G@)%?9τ??1?$?kt22@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate@??>??!{?????3@)??H?,|??1??mɐ?'@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????ׁ??!M?#???@)????ׁ??1M?#???@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??'?b??!?ɝj{J@)m???{???1??B??c@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensore?z?Fwp?!^X=љ?
@)e?z?Fwp?1^X=љ?
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap
g???p??!F} ?~?6@)M.??:?o?1X?(?	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?vK#??I????SX@Q?a????@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?1w-!?;@?1w-!?;@!?1w-!?;@      ??!       "	?
(?????
(????!?
(????*      ??!       2	?N^????N^???!?N^???:	????G??????G??!????G??B      ??!       J	?:??K???:??K??!?:??K??R      ??!       Z	?:??K???:??K??!?:??K??b      ??!       JGPUY?vK#??b q????SX@y?a????@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsw??????!w??????"=
 sequential_124/dense_374/SoftmaxSoftmax
??<,ɕ?!???2?l??"=
sequential_124/dense_372/MatMulMatMul$L?,J'??!|?1x????0"K
-gradient_tape/sequential_124/dense_372/MatMulMatMul-?\? _??!?w燱???0"K
/gradient_tape/sequential_124/dense_373/MatMul_1MatMul??G????!?FX?q??"K
/gradient_tape/sequential_124/dense_374/MatMul_1MatMul??PۙD??!?Q?#V??"=
sequential_124/dense_373/MatMulMatMulق?t?+??!?D?(n???0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam???g?@??!?,??sv??"=
sequential_124/dense_374/MatMulMatMul?&?????!?;?3??0"b
?sequential_124/dropout_124/dropout/random_uniform/RandomUniformRandomUniform?&?????!??D????Q      Y@Y??(??(.@a?뺮?:U@q?Y??wFO@y
?M?????"?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?62.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 