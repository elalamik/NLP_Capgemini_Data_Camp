?	ӽN???@ӽN???@!ӽN???@	K|q?jj??K|q?jj??!K|q?jj??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6ӽN???@,?`p?E<@1???3??A?3????I??^
??Y?9?ؗl??*	^?I#^@2U
Iterator::Model::ParallelMapV2ca??????!?Π?9@)ca??????1?Π?9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??_#I??!J
8?Z8@)Ǽ?8d??1?t?|rC4@:Preprocessing2F
Iterator::Model7?~T??!?
?x?#F@)
ףp=
??1??"8?2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateg??I}Y??!/??|?X5@)??????1???[(@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?e??a???!Rj?EU"@)?e??a???1Rj?EU"@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipXuV?1??!4?s??K@)???>9
??1????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorIC??3t?!VJ??]@)IC??3t?1VJ??]@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapW]?jJ???!*??8@)????4cq?1fϬ??+@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9J|q?jj??I4??]?SX@Q
<??s@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	,?`p?E<@,?`p?E<@!,?`p?E<@      ??!       "	???3?????3??!???3??*      ??!       2	?3?????3????!?3????:	??^
????^
??!??^
??B      ??!       J	?9?ؗl???9?ؗl??!?9?ؗl??R      ??!       Z	?9?ؗl???9?ؗl??!?9?ؗl??b      ??!       JGPUYJ|q?jj??b q4??]?SX@y
<??s@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?޴?R??!?޴?R??"=
sequential_228/dense_684/MatMulMatMul????3???!?w?nr??0"=
sequential_228/dense_685/MatMulMatMul#n<?+}??!Z?"??0"=
 sequential_228/dense_686/SoftmaxSoftmax??.????!?}?4P???"K
-gradient_tape/sequential_228/dense_685/MatMulMatMul???k('??!ДMB5??0"=
sequential_228/dense_686/MatMulMatMul???????!??>?{??0"K
-gradient_tape/sequential_228/dense_684/MatMulMatMul?
7q????!gcR$???0"K
/gradient_tape/sequential_228/dense_686/MatMul_1MatMulͨ?߃k??!?=Nbc??"K
/gradient_tape/sequential_228/dense_685/MatMul_1MatMul?&pK???!5rϽ??"K
-gradient_tape/sequential_228/dense_686/MatMulMatMul=??H???!???????0Q      Y@Y??(??(.@a?뺮?:U@q?\?MN?P@yf??umT??"?
both?Your program is POTENTIALLY input-bound because 90.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?67.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 