?	섗?ԋ9@섗?ԋ9@!섗?ԋ9@	???O??????O???!???O???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6섗?ԋ9@?Z? m?6@1#0?709??A?m5댧?I
???????Y'???K??*	?x?&1Pd@2U
Iterator::Model::ParallelMapV21\ qW??!Oۥ??2@)1\ qW??1Oۥ??2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeata???pɡ?!`: ?`5@)??3?ޜ?1?5_QY1@:Preprocessing2F
Iterator::ModelǸ???ܬ?!<???"XA@)]???a??1T?W?/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?_????!v????|4@)??R{m??1Y5???',@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipy?ѩ+??!b7???SP@)?{?ڥ??1Xj??+@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?乾??!lQ???>@)U3k) ???1퉓??/#@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?Q???T??!%ǥ?p?@)?Q???T??1%ǥ?p?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??0??z?!-?w@)??0??z?1-?w@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 89.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???O???I?d?X@Ql?{??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?Z? m?6@?Z? m?6@!?Z? m?6@      ??!       "	#0?709??#0?709??!#0?709??*      ??!       2	?m5댧??m5댧?!?m5댧?:	
???????
???????!
???????B      ??!       J	'???K??'???K??!'???K??R      ??!       Z	'???K??'???K??!'???K??b      ??!       JGPUY???O???b q?d?X@yl?{??@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?}⤚??!?}⤚??":
sequential_4/dense_14/SoftmaxSoftmax5D??]??!-?9<???":
sequential_4/dense_12/MatMulMatMul??I??Ց?!$CjR???0"H
*gradient_tape/sequential_4/dense_12/MatMulMatMul3?iO?l??!w?`????0"H
,gradient_tape/sequential_4/dense_14/MatMul_1MatMul??3$??!?ԇ???"H
,gradient_tape/sequential_4/dense_13/MatMul_1MatMulI??Xb??!??\$???":
sequential_4/dense_13/MatMulMatMul??*??2??!ҷL&???0"H
*gradient_tape/sequential_4/dense_14/MatMulMatMul???#?'??!M"׭c???0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam:???D??!G????e??"H
*gradient_tape/sequential_4/dense_13/MatMulMatMul:???D??!A v?g&??0Q      Y@Y??(??(.@a?뺮?:U@q??????I@y??Mֹ??"?
both?Your program is POTENTIALLY input-bound because 89.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?51.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 