?	?.9??>@?.9??>@!?.9??>@	??!?j????!?j??!??!?j??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?.9??>@q??H/?;@1??m????Af??_??I?yUgu??YC?*q??*	?VV@2U
Iterator::Model::ParallelMapV2???TƟ?!n?Ҫ??A@)???TƟ?1n?Ҫ??A@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat 
fL???!gƟhU?9@)?}???ϒ?1@?a?b?4@:Preprocessing2F
Iterator::Model{Ic?????!<???II@)??????18???-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateLk??^??!r?G9l?,@)???$xCz?1??r	@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?
ҌE?y?!???kf?@)?
ҌE?y?1???kf?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?]0?掦?!?>(2??H@)??v?ӂw?1C94?d?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor1zn?+q?!?8?l??@)1zn?+q?1?8?l??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapb??BW"??!Ϩc?}?1@)????>?h?1?h?=?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??!?j??I	
?nH:X@Q?Û?M?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	q??H/?;@q??H/?;@!q??H/?;@      ??!       "	??m??????m????!??m????*      ??!       2	f??_??f??_??!f??_??:	?yUgu???yUgu??!?yUgu??B      ??!       J	C?*q??C?*q??!C?*q??R      ??!       Z	C?*q??C?*q??!C?*q??b      ??!       JGPUY??!?j??b q	
?nH:X@y?Û?M?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?\??*]??!?\??*]??";
sequential_12/dense_36/MatMulMatMulϽ????!Z?;5O??0";
sequential_12/dense_38/SoftmaxSoftmax?ţ??x??!??'??";
sequential_12/dense_37/MatMulMatMulpf??????!۹fF#???0"I
+gradient_tape/sequential_12/dense_37/MatMulMatMulx?fB?b??!ꎳn}G??0";
sequential_12/dense_38/MatMulMatMulR?ªm??!j?c?J??0"I
+gradient_tape/sequential_12/dense_36/MatMulMatMul`Q??|???!??JG??0"I
-gradient_tape/sequential_12/dense_37/MatMul_1MatMul'_??4??!.?y?@??"I
-gradient_tape/sequential_12/dense_38/MatMul_1MatMul|Tz?6??!ҝ}.?9??"I
+gradient_tape/sequential_12/dense_38/MatMulMatMul??1?Ћ?! +'?3??0Q      Y@Y??(??(.@a?뺮?:U@q?9VN??P@y?w0<??"?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?66.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 