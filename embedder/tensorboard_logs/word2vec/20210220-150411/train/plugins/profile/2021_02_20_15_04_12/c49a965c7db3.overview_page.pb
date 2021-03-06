?	?R?h?8@?R?h?8@!?R?h?8@	#*???O??#*???O??!#*???O??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?R?h?8@???-??6@1e ???-??A?I(}!???I?B?????Y???O???*	????x!U@2U
Iterator::Model::ParallelMapV2T??b???!?㕍??;@)T??b???1?㕍??;@:Preprocessing2F
Iterator::Model??W????!CPtw??H@)ș&l???1??Ra?6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat#K?Xޕ?!?f?9D9@)?8~?4??1?zϻ?5@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate_?"??]??!'?-#c0@)??~??@?1My??"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?O??0{y?!vj?p@)?O??0{y?1vj?p@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip s-Z????!????/I@)????mr?1+???J@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???@?Mm?!???C??@)???@?Mm?1???C??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?M?E???!B?a=??3@))H4?"f?1?S|??	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9#*???O??I@?@?YKX@Q?m???? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???-??6@???-??6@!???-??6@      ??!       "	e ???-??e ???-??!e ???-??*      ??!       2	?I(}!????I(}!???!?I(}!???:	?B??????B?????!?B?????B      ??!       J	???O??????O???!???O???R      ??!       Z	???O??????O???!???O???b      ??!       JGPUY#*???O??b q@?@?YKX@y?m???? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???Z???!???Z???"<
sequential_98/dense_294/MatMulMatMul~"J<T??!?Ʈ6I???0"<
sequential_98/dense_296/SoftmaxSoftmaxv		C???!HW?J???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam`?՜F???!޳???+??"J
.gradient_tape/sequential_98/dense_295/MatMul_1MatMul޺??ݖ?!???????"J
.gradient_tape/sequential_98/dense_296/MatMul_1MatMul?L?71??![??????"J
,gradient_tape/sequential_98/dense_294/MatMulMatMul?]??L???!7??ߔ5??0"<
sequential_98/dense_295/MatMulMatMul???R|??!?՗
Z}??0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdami??A??!???Nj???"J
,gradient_tape/sequential_98/dense_295/MatMulMatMul???uZm??!?K?????0Q      Y@Y[ZZZZZ6@ajiiiiiS@q??{?]?J@y?u클+??"?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?53.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 