?	??G??7@??G??7@!??G??7@	??kf?????kf???!??kf???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??G??7@???P?5@1^?????A?-??????I?!??????Y???N???*	bX9?x[@2U
Iterator::Model::ParallelMapV2xG?j????!R$S4??@@)xG?j????1R$S4??@@:Preprocessing2F
Iterator::Model0???"??!??Ю?P@)??!?Q*??14W?R??>@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?W?\??!??????1@)[??vN???1?66??-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate:?Y?X??!??;j?%@)?ͨ?*?x?1???1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?6ǹM?w?!????|@)?6ǹM?w?1????|@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip뫫???!?^? ?A@)F?=?Ӟr?1n???M?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorZՒ?r0k?!?Y?)@)ZՒ?r0k?1?Y?)@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap|?_?????!??LF?p+@)I?V?j?1??Dp7@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??kf???I??P?FX@Q?? ?G?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???P?5@???P?5@!???P?5@      ??!       "	^?????^?????!^?????*      ??!       2	?-???????-??????!?-??????:	?!???????!??????!?!??????B      ??!       J	???N??????N???!???N???R      ??!       Z	???N??????N???!???N???b      ??!       JGPUY??kf???b q??P?FX@y?? ?G?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsA??]??!A??]??"=
sequential_209/dense_627/MatMulMatMul]?}N?p??!XRN?;y??0"-
IteratorGetNext/_1_SendVi??%??!M??Q??"K
-gradient_tape/sequential_209/dense_627/MatMulMatMul?T	;??!??U????0"=
 sequential_209/dense_629/SoftmaxSoftmax??\ٝ?!8?"JD???"=
sequential_209/dense_628/MatMulMatMulp? u???!o?r?<???0"K
-gradient_tape/sequential_209/dense_628/MatMulMatMul??BS????!???&v??0"K
/gradient_tape/sequential_209/dense_628/MatMul_1MatMul8?G?????!?f"????"K
/gradient_tape/sequential_209/dense_629/MatMul_1MatMul?F?X??!^?_?;???"=
sequential_209/dense_629/MatMulMatMul?h?'???!??܍o??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?E?OjH@y?f?G5???"?
both?Your program is POTENTIALLY input-bound because 91.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?48.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 