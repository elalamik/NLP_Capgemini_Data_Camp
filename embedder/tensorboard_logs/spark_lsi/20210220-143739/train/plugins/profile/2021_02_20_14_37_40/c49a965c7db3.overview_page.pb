?	??r?? 6@??r?? 6@!??r?? 6@	????@????@!????@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??r?? 6@M???(3@1"7??|??A=?Ƃ ??IӾ??z??Y??x??[??*	?z?G?c@2F
Iterator::Model,??ص???!?\??"F@)?ѫJC??11?w???:@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?`????!P?????@@)*U??-???1d??2@:Preprocessing2U
Iterator::Model::ParallelMapV2[a?^Cp??!? B*??1@)[a?^Cp??1? B*??1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?s]?@??!??hr?*@)?Ù_???1N{b??w&@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?R???!w4Ը?.@)?܁:???1???J?S&@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip????KU??!?=?a?K@)W!?'?>??1"?%?>"@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceM1AG?z?!?yr?$?@)M1AG?z?1?yr?$?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor4?????i?!??1 @)4?????i?1??1 @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 87.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?8.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9????@I?_?7p?W@Q`d?޻@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	M???(3@M???(3@!M???(3@      ??!       "	"7??|??"7??|??!"7??|??*      ??!       2	=?Ƃ ??=?Ƃ ??!=?Ƃ ??:	Ӿ??z??Ӿ??z??!Ӿ??z??B      ??!       J	??x??[????x??[??!??x??[??R      ??!       Z	??x??[????x??[??!??x??[??b      ??!       JGPUY????@b q?_?7p?W@y`d?޻@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??X'????!??X'????"9
sequential_3/dense_9/MatMulMatMul;<OF?Y??!JMv<u???0":
sequential_3/dense_11/SoftmaxSoftmaxI???)??!??B????"H
,gradient_tape/sequential_3/dense_11/MatMul_1MatMulyF#???!PңJ@??"H
,gradient_tape/sequential_3/dense_10/MatMul_1MatMul???ם??!n?????"G
)gradient_tape/sequential_3/dense_9/MatMulMatMulp?A4
j??!5?b?????0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??e?Y??!Ꮋ?P??":
sequential_3/dense_10/MatMulMatMulyҖzI??!r?(_?b??0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdamv???a???!9?xwނ??"^
;sequential_3/dropout_3/dropout/random_uniform/RandomUniformRandomUniform???G?W??!s???W???Q      Y@Y[ZZZZZ6@ajiiiiiS@q?o]=?q@@y?pM?~??"?
both?Your program is POTENTIALLY input-bound because 87.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?8.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?32.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 