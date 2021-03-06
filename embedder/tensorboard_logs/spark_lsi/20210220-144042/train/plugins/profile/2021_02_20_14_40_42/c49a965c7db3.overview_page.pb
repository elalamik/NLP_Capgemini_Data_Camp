?	;??T?*5@;??T?*5@!;??T?*5@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-;??T?*5@f??(?P3@1??R??q??A?p?{????I???uS???*	P??nSV@2U
Iterator::Model::ParallelMapV2(?r?w???!???5JB@)(?r?w???1???5JB@:Preprocessing2F
Iterator::Modelm?M??!E?O5~dK@)?Sͬ???1cj?Ԑ42@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat???I???!Fg u?4@)n0?a?[??1?E?@w?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?J̳?V??!??l???.@)?S???}?1XIȬ?@ @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?A?L??z?!?VI?ny@)?A?L??z?1?VI?ny@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?*?)???!?Z?ʁ?F@)?h㈵?t?1????7?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor
?s34n?!?????@)
?s34n?1?????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??Z	?%??!?:???2@)?i?{??g?1t? <?
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIR?l]?QX@Q?uhRt?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	f??(?P3@f??(?P3@!f??(?P3@      ??!       "	??R??q????R??q??!??R??q??*      ??!       2	?p?{?????p?{????!?p?{????:	???uS??????uS???!???uS???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qR?l]?QX@y?uhRt?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits\F?<oW??!\F?<oW??"-
IteratorGetNext/_2_RecvTq?????!X????H??";
sequential_19/dense_57/MatMulMatMulK?Dl¨?!A	ca??0"I
+gradient_tape/sequential_19/dense_57/MatMulMatMul??m???!9?OڦR??0";
sequential_19/dense_59/SoftmaxSoftmax?o??%d??!4z?9?(??";
sequential_19/dense_58/MatMulMatMulȍ?????!??y???0"I
-gradient_tape/sequential_19/dense_58/MatMul_1MatMul? ???F??!?ـ\??";
sequential_19/dense_59/MatMulMatMul? ???F??!&?[9????0"I
+gradient_tape/sequential_19/dense_58/MatMulMatMul??A??t??!ԟO}4H??0"I
-gradient_tape/sequential_19/dense_59/MatMul_1MatMulH?0????!ج?d???Q      Y@Y[ZZZZZ6@ajiiiiiS@q??w?;L@y???????"?
both?Your program is POTENTIALLY input-bound because 91.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?56.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 