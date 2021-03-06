?	?	?8?>@?	?8?>@!?	?8?>@	??B'??????B'????!??B'????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?	?8?>@     ?;@1|??Pk???AW?9?m¥?I~(F?L??Yݔ?Z	???*	?S㥛,X@2U
Iterator::Model::ParallelMapV2b???4??!?<Z3??<@)b???4??1?<Z3??<@:Preprocessing2F
Iterator::Model????M~??!??? ?K@)׿?3g}??1??????:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat ??G????!
?E???5@)?4c?tv??1a?
?W?2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateD?bԵ???!253XE/@)8ӅX???1??(+"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice`???y?!S?;?4@)`???y?1S?;?4@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?z????!??;F@)1AG?Zr?1????G?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?4?;?h?!J?????@)?4?;?h?1J?????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapV?F???!????2@){?%9`Wc?1??A?~?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??B'????I?w&Ώ@X@QhZ`1?J@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	     ?;@     ?;@!     ?;@      ??!       "	|??Pk???|??Pk???!|??Pk???*      ??!       2	W?9?m¥?W?9?m¥?!W?9?m¥?:	~(F?L??~(F?L??!~(F?L??B      ??!       J	ݔ?Z	???ݔ?Z	???!ݔ?Z	???R      ??!       Z	ݔ?Z	???ݔ?Z	???!ݔ?Z	???b      ??!       JGPUY??B'????b q?w&Ώ@X@yhZ`1?J@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits!|?????!!|?????";
sequential_29/dense_89/SoftmaxSoftmax?3?Z?z??!???{J???";
sequential_29/dense_87/MatMulMatMul???????!yKL???0"I
-gradient_tape/sequential_29/dense_88/MatMul_1MatMul-#??}??!??#??-??"I
-gradient_tape/sequential_29/dense_89/MatMul_1MatMulJ#?Bf???!ObM??"I
+gradient_tape/sequential_29/dense_87/MatMulMatMul?Cy??!F??????0";
sequential_29/dense_88/MatMulMatMul?E?I??!?o?=???0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam\N?d?L??!.<?H????"`
=sequential_29/dropout_29/dropout/random_uniform/RandomUniformRandomUniform?i????!?|?C?Y??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??iX???!Iu+U??Q      Y@Y??(??(.@a?뺮?:U@q4???I@y_4???U??"?
both?Your program is POTENTIALLY input-bound because 90.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?50.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 