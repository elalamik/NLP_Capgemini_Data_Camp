?	???VG9@???VG9@!???VG9@	?4WA???4WA??!?4WA??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6???VG9@Z?'??7@1??/?????A0/?>:u??I???N?:??Y?+?j???*	%??CV@2U
Iterator::Model::ParallelMapV2X?L??~??!?W????@@)X?L??~??1?W????@@:Preprocessing2F
Iterator::Model,???c??!$??*X:M@)ު?PMI??1?RB??8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat*??z????!?(?f?4@)B#ظ?]??1?󀘫^1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceG??ǁw?!/&f??@)G??ǁw?1/&f??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateGT?n.???!X?w)@)H?Sȕzv?1??I/J?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?a??m???!?~Cէ?D@)?܁:?q?1?vJ???@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorG????i?!??	Pӭ@)G????i?1??	Pӭ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?($??;??!0nd??D/@)3R臭?d?1??1??7@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?4WA??I??@?CX@Q"???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	Z?'??7@Z?'??7@!Z?'??7@      ??!       "	??/???????/?????!??/?????*      ??!       2	0/?>:u??0/?>:u??!0/?>:u??:	???N?:?????N?:??!???N?:??B      ??!       J	?+?j????+?j???!?+?j???R      ??!       Z	?+?j????+?j???!?+?j???b      ??!       JGPUY?4WA??b q??@?CX@y"???@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits_??r? ??!_??r? ??"<
sequential_65/dense_195/MatMulMatMul32G ^??!?O???'??0"-
IteratorGetNext/_1_Send??zuD??!?j??[???"<
sequential_65/dense_197/SoftmaxSoftmax??i????!veS_U???"J
,gradient_tape/sequential_65/dense_195/MatMulMatMul?!/H3???!?W֓???0"<
sequential_65/dense_196/MatMulMatMul?A9??!??B??W??0"J
,gradient_tape/sequential_65/dense_196/MatMulMatMul?N/@*???!??EH????0"J
.gradient_tape/sequential_65/dense_196/MatMul_1MatMulW?mW????!Wz?m?u??"<
sequential_65/dense_197/MatMulMatMul???e?Z??!c9dg???0"J
.gradient_tape/sequential_65/dense_197/MatMul_1MatMulJ?F? ???!?p?f??Q      Y@Y[ZZZZZ6@ajiiiiiS@q?M?n??K@ynˤy?&??"?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?55.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 