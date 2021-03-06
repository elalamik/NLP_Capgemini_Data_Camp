?	JӠhl6@JӠhl6@!JӠhl6@	??r?[?????r?[???!??r?[???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6JӠhl6@??ĭ?4@1???E_??A<i??
??I?l???Y?C p???*	?rh???`@2U
Iterator::Model::ParallelMapV2?	??bՠ?!<??W??8@)?	??bՠ?1<??W??8@:Preprocessing2F
Iterator::Model6x_????!y?;*\G@)?ܶ?Q??1?>]d?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???d?z??!?,
??`8@)?/.Ui???1??A?_4@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?vi?a??!?????2@)???l?Č?1??s)VG%@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??f????!???5?D @)??f????1???5?D @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?oB!??!?f??գJ@)ۈ'????1?W?oe	@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorq??Ŧu?!`???@)q??Ŧu?1`???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapMK??F??!
ۭ?d6@)?CR%?s?1m????@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??r?[???I?W?Q"X@Q?Lz?{@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??ĭ?4@??ĭ?4@!??ĭ?4@      ??!       "	???E_?????E_??!???E_??*      ??!       2	<i??
??<i??
??!<i??
??:	?l????l???!?l???B      ??!       J	?C p????C p???!?C p???R      ??!       Z	?C p????C p???!?C p???b      ??!       JGPUY??r?[???b q?W?Q"X@y?Lz?{@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?yP?}???!?yP?}???"-
IteratorGetNext/_1_Send??????!?z??????"=
sequential_114/dense_342/MatMulMatMul????A??!?w;????0"=
 sequential_114/dense_344/SoftmaxSoftmax$\??'???!??!?A???"K
-gradient_tape/sequential_114/dense_342/MatMulMatMul޺O{%"??!H??d???0"=
sequential_114/dense_343/MatMulMatMul????)ڛ?!???g??0"K
/gradient_tape/sequential_114/dense_343/MatMul_1MatMul=+1???!g? Mh???"K
/gradient_tape/sequential_114/dense_344/MatMul_1MatMul???,??!a??K)e??"K
-gradient_tape/sequential_114/dense_343/MatMulMatMul4????3??!???d???0"=
sequential_114/dense_344/MatMulMatMul??W????!c)J?'??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?E??9?B@ya?? ????"?
both?Your program is POTENTIALLY input-bound because 92.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?37.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 