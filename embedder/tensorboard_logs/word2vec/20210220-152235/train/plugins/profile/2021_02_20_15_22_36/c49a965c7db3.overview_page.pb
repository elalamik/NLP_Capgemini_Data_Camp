?	?AA)Z?C@?AA)Z?C@!?AA)Z?C@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?AA)Z?C@r?
?B@1I??Z????A~s??o??IB??ފ???*	gffff?W@2U
Iterator::Model::ParallelMapV2>?ͨ???!????!?;@)>?ͨ???1????!?;@:Preprocessing2F
Iterator::Model?V??,???!'xO?o?I@)??B?l??1P??׽=7@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateF?a????!F ܡ?k6@)~b??U??1/#?`g.@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatz6?>W[??!??n?%?1@)??ƌ?1?1??}?-@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??i?{?!??)?$?@)??i?{?1??)?$?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip1Xr???!؇?!?fH@)??>rkr?1??d])@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?rL???!Q*?90
:@)??V?I?k?1ZP齴?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????g?! ???5?@)?????g?1 ???5?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??G? ?X@Q"A ??w??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	r?
?B@r?
?B@!r?
?B@      ??!       "	I??Z????I??Z????!I??Z????*      ??!       2	~s??o??~s??o??!~s??o??:	B??ފ???B??ފ???!B??ފ???B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??G? ?X@y"A ??w???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits)?Ds>??!)?Ds>??"=
sequential_161/dense_483/MatMulMatMul"?}??t??!??3?[??0"-
IteratorGetNext/_2_Recvn? $ɇ??!?	>????"K
-gradient_tape/sequential_161/dense_483/MatMulMatMulZ???8???!?f&?>???0"=
 sequential_161/dense_485/SoftmaxSoftmaxz?????!>>?R????"=
sequential_161/dense_484/MatMulMatMul)?~(????!?*iev???0"K
/gradient_tape/sequential_161/dense_485/MatMul_1MatMul?6??_???!?(^???"K
-gradient_tape/sequential_161/dense_484/MatMulMatMul?'1K<i??!d ?"P???0"K
/gradient_tape/sequential_161/dense_484/MatMul_1MatMul(??P???!?8??<???"=
sequential_161/dense_485/MatMulMatMulE?Z?|y??!??-t?b??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q?ac??M@y?ۣmO???"?
both?Your program is POTENTIALLY input-bound because 94.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?58.2% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 