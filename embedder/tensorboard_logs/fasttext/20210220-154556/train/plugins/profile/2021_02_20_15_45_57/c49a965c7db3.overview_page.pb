?	????y?@@????y?@@!????y?@@	|??????|??????!|??????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6????y?@@:y?	?q=@1?'?y??A??)?J=??I?*8?`@Y?7?-:???*	??C?|W@2U
Iterator::Model::ParallelMapV2?dT??!?uK??@@)?dT??1?uK??@@:Preprocessing2F
Iterator::Model?S?*?g??!?5?U?rK@)?	i?A'??1`??F?4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat0L?
F%??!\?~??5@)??2?68??1??O?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceDkE??|?!U?5?@)DkE??|?1U?5?@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate~U.T????!?e?E?-@)?f?ba?|?1ط ۨ@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??f????!?s?d?F@)?8K?rr?1h}!+N-@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???{ho?!E?&sS@)???{ho?1E?&sS@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?5Y????!wh??eT2@)?Y??8j?1^?A1B@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9|??????It??N?W@Q?f3?7?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	:y?	?q=@:y?	?q=@!:y?	?q=@      ??!       "	?'?y???'?y??!?'?y??*      ??!       2	??)?J=????)?J=??!??)?J=??:	?*8?`@?*8?`@!?*8?`@B      ??!       J	?7?-:????7?-:???!?7?-:???R      ??!       Z	?7?-:????7?-:???!?7?-:???b      ??!       JGPUY|??????b qt??N?W@y?f3?7?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??|????!??|????"=
sequential_237/dense_711/MatMulMatMul?B??<{??!??[~?~??0"-
IteratorGetNext/_1_SendG??????!]?????"K
-gradient_tape/sequential_237/dense_711/MatMulMatMul???*ٕ?!~%?-A\??0"=
 sequential_237/dense_713/SoftmaxSoftmax?C'*??!??????"=
sequential_237/dense_712/MatMulMatMul??s^???!?F?@??0"K
/gradient_tape/sequential_237/dense_713/MatMul_1MatMulN|-Q?B??!??X?@T??"=
sequential_237/dense_713/MatMulMatMul&?4[???!?'j?d??0"K
-gradient_tape/sequential_237/dense_712/MatMulMatMul??4Nǐ?!ZMMq??0"M
3sequential_237/batch_normalization_117/moments/meanMean>?}?????!.??W?y??Q      Y@Y??(??(.@a?뺮?:U@q/N ??xA@yC2vu2??"?
both?Your program is POTENTIALLY input-bound because 89.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?34.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 