?	i??r?#D@i??r?#D@!i??r?#D@	?aN??6???aN??6??!?aN??6??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6i??r?#D@.??HwB@1f.py????APoF?W??IR??Z??@Y/1?闈??*	?/?$v@2U
Iterator::Model::ParallelMapV2??fH??!T?7?N@)??fH??1T?7?N@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?K8???!???e?61@)xρ???1e&‶*@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?JY?8֥?!>dJ?4(@)?*øD??13?;?X[%@:Preprocessing2F
Iterator::Model?^???F??!?zV???P@) ??q???1L?-Q@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???:8؋?!fw????@)???:8؋?1fw????@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip5z5@i???!#
SC,p@@)wj.7???1     ?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorC?l??t?!WEY@???)C?l??t?1WEY@???:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapl#?	???!6?sa?m2@)?n???q?1ti??n??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?aN??6??I??1x+?X@Q?u?7F??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	.??HwB@.??HwB@!.??HwB@      ??!       "	f.py????f.py????!f.py????*      ??!       2	PoF?W??PoF?W??!PoF?W??:	R??Z??@R??Z??@!R??Z??@B      ??!       J	/1?闈??/1?闈??!/1?闈??R      ??!       Z	/1?闈??/1?闈??!/1?闈??b      ??!       JGPUY?aN??6??b q??1x+?X@y?u?7F???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??????!??????"=
 sequential_172/dense_518/SoftmaxSoftmax!?H??y??!?#????"=
sequential_172/dense_516/MatMulMatMulD?Ff??!H??_???0"K
-gradient_tape/sequential_172/dense_516/MatMulMatMulYhJ'???!??I%??0"K
/gradient_tape/sequential_172/dense_517/MatMul_1MatMulK??F???!???7??"K
/gradient_tape/sequential_172/dense_518/MatMul_1MatMultHѧo??!??g?	??"=
sequential_172/dense_517/MatMulMatMul??{????!???????0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdamn?Q??֋?!RXZ?J???"`
Cgradient_tape/sequential_172/batch_normalization_84/moments/truedivRealDiv???J???!/ɠ,U???"f
?sequential_172/batch_normalization_84/moments/SquaredDifferenceSquaredDifference???J???!:??_W??Q      Y@Y??(??(.@a?뺮?:U@q???@??K@yZK?C???"?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?55.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 