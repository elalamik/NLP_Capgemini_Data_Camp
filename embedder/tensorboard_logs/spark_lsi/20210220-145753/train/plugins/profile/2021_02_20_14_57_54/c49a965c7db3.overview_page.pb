?	|??mT]A@|??mT]A@!|??mT]A@	??<??????<????!??<????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6|??mT]A@E????@@1w?Df.???AM-[닄??I?c?????Y??K?A???*	?C?l?V@2U
Iterator::Model::ParallelMapV2~7ݲC??!??I#eA?@)~7ݲC??1??I#eA?@:Preprocessing2F
Iterator::Model)?k{?%??!ѧ?~??K@)6?????1??Mړ\8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??l??!??'?=z5@)?`S?Q???1:s?T?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?$???7{?!?"@)?$???7{?1?"@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatep_?Q??!Gk?-@)??%jjy?1?Ѣ?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipS\U?]??!/X4?1F@)L??1%r?1??X]?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor%]3?f?k?!?"?J?@)%]3?f?k?1?"?J?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?k^?Y-??!"?ۘ?1@)r??rg&h?1?????
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??<????I?ƷH?gX@Qy3?? ? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	E????@@E????@@!E????@@      ??!       "	w?Df.???w?Df.???!w?Df.???*      ??!       2	M-[닄??M-[닄??!M-[닄??:	?c??????c?????!?c?????B      ??!       J	??K?A?????K?A???!??K?A???R      ??!       Z	??K?A?????K?A???!??K?A???b      ??!       JGPUY??<????b q?ƷH?gX@yy3?? ? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsٺ??"B??!ٺ??"B??"<
sequential_78/dense_234/MatMulMatMuld???ܘ?!ZG<˸]??0"<
sequential_78/dense_236/SoftmaxSoftmax'CO???!?/?[P??"<
sequential_78/dense_235/MatMulMatMulkm???\??!l?~?[??0"J
,gradient_tape/sequential_78/dense_234/MatMulMatMul|?L?+??!-???N??0"J
.gradient_tape/sequential_78/dense_236/MatMul_1MatMulv?????!???????"J
.gradient_tape/sequential_78/dense_235/MatMul_1MatMul?ʙ?J@??!??????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam ?7X?(??!?z?!8???"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam?>??:??!?lZ???"_
Bgradient_tape/sequential_78/batch_normalization_38/moments/truedivRealDiv׶v	~??!o":??p??Q      Y@Y??(??(.@a?뺮?:U@q????M+Q@yh&ȓ:???"?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?68.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 