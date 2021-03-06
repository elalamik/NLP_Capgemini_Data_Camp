?	2?	??^B@2?	??^B@!2?	??^B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-2?	??^B@u??iA@1?z?????A?q?߅???I}$%=???*	?????T@2F
Iterator::Model:?ؗl<??!%ʴ??]L@)??mnLO??1??*??s<@:Preprocessing2U
Iterator::Model::ParallelMapV2?D??)??!h?>^?G<@)?D??)??1h?>^?G<@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatb.??n??!??Z	?5@)?/??L???1??<nc?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceoH?'{?!r}2??@)oH?'{?1r}2??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?*??p???!$?#?+@)??9"ߥt?1֜??*@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipɮ???{??!?5K[9?E@)կt><Kp?1????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?Pj/??h?!???d/-@)?Pj/??h?1???d/-@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?;?????!?a?f??0@)???y7d?1 ?Q??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??L??X@Q??lz??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	u??iA@u??iA@!u??iA@      ??!       "	?z??????z?????!?z?????*      ??!       2	?q?߅????q?߅???!?q?߅???:	}$%=???}$%=???!}$%=???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??L??X@y??lz???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits~?\?N??!~?\?N??"<
sequential_82/dense_246/MatMulMatMul?t3F<???!????;??0"<
sequential_82/dense_248/SoftmaxSoftmaxR?*????!ZZ???*??"<
sequential_82/dense_247/MatMulMatMul*D?? ??!?n????0"-
IteratorGetNext/_2_RecvA?.????!?]f`???"J
,gradient_tape/sequential_82/dense_247/MatMulMatMulc?1c????!?w?n?j??0"J
,gradient_tape/sequential_82/dense_246/MatMulMatMul?[2??o??!t??-???0"<
sequential_82/dense_248/MatMulMatMul?6?7Ɩ?!???=n??0"J
.gradient_tape/sequential_82/dense_248/MatMul_1MatMulB&ڙ???!e_?F????"J
.gradient_tape/sequential_82/dense_247/MatMul_1MatMul??Ԝ$???!`??????Q      Y@Y[ZZZZZ6@ajiiiiiS@q!<Io?R@y?bJ?z??"?
both?Your program is POTENTIALLY input-bound because 94.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?75.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 