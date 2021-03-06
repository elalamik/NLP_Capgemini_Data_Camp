?	E?>?_?@E?>?_?@!E?>?_?@	IN%~)???IN%~)???!IN%~)???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6E?>?_?@?!?
?<@1C?????AR*?	????Iϼv߱??Y/?e?????*	n???IW@2U
Iterator::Model::ParallelMapV2,I???p??!?6?t<A@),I???p??1?6?t<A@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat ?Ȓ9???!?? ?8@)??]Pߒ?1[?S,??3@:Preprocessing2F
Iterator::Model4??yT???!???@+%I@)!<?8b-??1d?&٢/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateL?^I???!?????X.@)?????1?[8'a @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?*???z?!?D??@)?*???z?1?D??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipF?7?k???!(!???H@)??À%w?1?Ō??C@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?}?֤?r?!ez?:?@)?}?֤?r?1ez?:?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?)?J=??!? ???2@)????Đl?1헭aI?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9IN%~)???I??W.?HX@Q?Dw??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?!?
?<@?!?
?<@!?!?
?<@      ??!       "	C?????C?????!C?????*      ??!       2	R*?	????R*?	????!R*?	????:	ϼv߱??ϼv߱??!ϼv߱??B      ??!       J	/?e?????/?e?????!/?e?????R      ??!       Z	/?e?????/?e?????!/?e?????b      ??!       JGPUYIN%~)???b q??W.?HX@y?Dw??@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?b??H???!?b??H???"=
 sequential_220/dense_662/SoftmaxSoftmax??'??ĕ?!}a?X?j??"=
sequential_220/dense_660/MatMulMatMulZ???????!??????0"K
-gradient_tape/sequential_220/dense_660/MatMulMatMul?K1?"??!?v?????0"K
/gradient_tape/sequential_220/dense_662/MatMul_1MatMul?OF?M??!y@??????"K
/gradient_tape/sequential_220/dense_661/MatMul_1MatMul?Hz??Ӎ?!?ARȧ??"=
sequential_220/dense_661/MatMulMatMul? ??)???!???w???0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??(?2??!??g???"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam$??????!ɣ?NW??"a
Dgradient_tape/sequential_220/batch_normalization_108/moments/truedivRealDiv$??????!?Dэ???Q      Y@Y??(??(.@a?뺮?:U@qZ?Q???P@yV?&?8C??"?
both?Your program is POTENTIALLY input-bound because 91.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?66.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 