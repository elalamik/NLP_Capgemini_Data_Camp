?	*U??-OC@*U??-OC@!*U??-OC@	?:2ڿ????:2ڿ???!?:2ڿ???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6*U??-OC@?3?Y??A@1w稣???Aq>????I??߼8???Y???K??*	㥛? ?T@2U
Iterator::Model::ParallelMapV2?w?-;ğ?!.?`??B@)?w?-;ğ?1.?`??B@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat臭?????!$56?Q7@)?qs*??1+K?n$3@:Preprocessing2F
Iterator::Model]?6??n??!??1???J@)?4-?2??1?E?&/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?V횐ֈ?!?????-@)?zNz??z?1"?Tj@	 @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?2??A?v?!?@CI?@)?2??A?v?1?@CI?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?????!
x?MQSG@)??֪]s?1(Eʚ@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorX?\Tl?!?????@)X?\Tl?1?????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap/??w???!?)Ҿ??1@)???s??b?1ʆ9??s@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?:2ڿ???I???@aX@Q???@r? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?3?Y??A@?3?Y??A@!?3?Y??A@      ??!       "	w稣???w稣???!w稣???*      ??!       2	q>????q>????!q>????:	??߼8?????߼8???!??߼8???B      ??!       J	???K?????K??!???K??R      ??!       Z	???K?????K??!???K??b      ??!       JGPUY?:2ڿ???b q???@aX@y???@r? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsJg??\??!Jg??\??"<
sequential_93/dense_279/MatMulMatMul?Z?#y??!'?R????0"-
IteratorGetNext/_1_SendQr?????!q[L????"J
,gradient_tape/sequential_93/dense_279/MatMulMatMul?cϪ?'??!?G?%???0"<
sequential_93/dense_281/SoftmaxSoftmax?|K5???!????]??"<
sequential_93/dense_280/MatMulMatMul?V0`? ??!???}?p??0"<
sequential_93/dense_281/MatMulMatMul??U??6??!kF#^???0"J
.gradient_tape/sequential_93/dense_280/MatMul_1MatMul???-?!??!?e??|???"J
,gradient_tape/sequential_93/dense_280/MatMulMatMul ?%5?\??!??M?K???0"J
.gradient_tape/sequential_93/dense_281/MatMul_1MatMulѨ;׍R??!py??t???Q      Y@Y??(??(.@a?뺮?:U@qq?y?QoO@yB?}?r3??"?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?62.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 