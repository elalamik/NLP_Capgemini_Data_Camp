?	o?[t?8A@o?[t?8A@!o?[t?8A@	Wy;????Wy;????!Wy;????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6o?[t?8A@??k	?4?@1?2d????A^,??׫?I??mRq @Y?Y,E???*	?n???X@2U
Iterator::Model::ParallelMapV2?_cD???!(.)d?k@@)?_cD???1(.)d?k@@:Preprocessing2F
Iterator::Model;?2??!i??B??K@)K=By??1?v5???6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?ݭ,?Y??!7???6@)????????1???E2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??	??y?!???h
G@)??	??y?1???h
G@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?9$?P2??!?4??	?(@)>?4a??x?1?ι"	y@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??I`s??!?<?*F@)??[v?x?1T$S?/@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?ba???n?!2{ݾ7Z@)?ba???n?12{ݾ7Z@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???Im??!?Ҿj70@)?x'?n?1Y?!g);@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 90.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9Wy;????I%?=?.X@Q??aӔa @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??k	?4?@??k	?4?@!??k	?4?@      ??!       "	?2d?????2d????!?2d????*      ??!       2	^,??׫?^,??׫?!^,??׫?:	??mRq @??mRq @!??mRq @B      ??!       J	?Y,E????Y,E???!?Y,E???R      ??!       Z	?Y,E????Y,E???!?Y,E???b      ??!       JGPUYWy;????b q%?=?.X@y??aӔa @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits%hz?????!%hz?????"=
 sequential_196/dense_590/SoftmaxSoftmax-FR???!?-Ëh???"K
-gradient_tape/sequential_196/dense_588/MatMulMatMull翸????!?*?Bٵ??0"=
sequential_196/dense_588/MatMulMatMulJQ?????!ݴ?A????0"K
/gradient_tape/sequential_196/dense_589/MatMul_1MatMul???????!&SH?????"K
/gradient_tape/sequential_196/dense_590/MatMul_1MatMulT*??z??!??:?????"=
sequential_196/dense_589/MatMulMatMul_?_F???!H2??/???0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??w??i??!R??2|???"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam6ʜ;????!??}lAh??"K
-gradient_tape/sequential_196/dense_589/MatMulMatMul??E?????!?@JN'??0Q      Y@Y??(??(.@a?뺮?:U@q=p?p?G@y?h??????"?
both?Your program is POTENTIALLY input-bound because 90.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?47.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 